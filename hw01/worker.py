import os
import logging
import json
import re
import gzip
import argparse
from datetime import datetime
from collections import namedtuple
import statistics
import itertools
import copy

DEFAULT_CONFIG_PATH = ""
REPORT_TEMPLATE_PATH = "./reports/report.html"

LOG_RECORD_REGEX = re.compile(
    r"^"
    r"\S+ "  # IP address
    r'\S+\s+'  # User ID
    r'\S+ '  # User real IP
    r'\[\S+ \S+\] '  # Local time [datetime tz]
    r'"\S+ (?P<url>\S+) \S+" '  # Request info
    r'\d+ '  # Status
    r'\d+ '  # Bytes sent
    r'"\S+" '  # Referrer
    r'".*" '  # User agent
    r'"\S+" '  # Forwarded for
    r'"\S+" '  # Request ID
    r'"\S+" '  # User RB
    r'(?P<duration>\d+\.\d+)'  # Request duration
)

FileInfo = namedtuple('FileInfo', ['path', 'date'])


def load_config(path):
    with open(path, 'rb') as file:
        return json.load(file, encoding='utf8')


def generate_report(records, limit):
    total_records = 0
    total_duration = 0
    data = {}

    for url, duration in records:
        total_records += 1
        total_duration += float(duration)
        if url in data:
            data[url]["records"] += 1
            data[url]["times"].append(float(duration))
        else:
            data.update({
                url: {
                    "records": 1,
                    "times": [float(duration)]
                }
            })

    data = dict(itertools.islice(data.items(), limit))
    return [
        {
            "url": key,
            "count": data[key]["records"],
            "time_sum": sum(data[key]["times"]),
            "time_avg": sum(data[key]["times"]) / len(data[key]["times"]),
            "time_max": max(data[key]["times"]),
            "time_med": statistics.median(data[key]["times"]),
            "time_perc": sum(data[key]["times"]) / total_duration * 100,
            "count_perc": data[key]["records"] / total_records * 100
        } for key in data
    ]


def extract_log_records(path, parser, errors_limit=None):
    open_fn = gzip.open if path.endswith('.gz') else open
    errors = 0
    total = 0
    log_records = []
    with open_fn(path, mode='rb') as file:
        for line in file:
            total += 1
            try:
                log_records.append(parser(line))
            except UnicodeDecodeError:
                errors += 1

    if errors_limit is not None and total > 0 and errors / float(total) > errors_limit:
        raise RuntimeError('Errors limit exceeded')

    return log_records


def parse_log_record(line):
    decoded_line = line.decode("utf-8")
    url = decoded_line.split(" ")[7]
    duration = decoded_line.split(" ")[-1]
    return url, duration


def setup_logging(path):
    dir = os.path.split(path)[0]
    if not os.path.exists(dir):
        os.makedirs(dir)
    logging.basicConfig(filename=path, level=logging.INFO,
                        format='[%(asctime)s] %(levelname).1s %(message)s',
                        datefmt='%Y.%m.%d %H:%M:%S')


def get_latest_log(directory):
    if not os.path.isdir(directory):
        return None

    latest_file = latest_date = None
    for filename in os.listdir(directory):
        match = re.match(r'^nginx-access-ui\.log-(?P<date>\d{8})'\
                                         r'(\.gz)?$', filename)
        if match:
            try:
                date = datetime.strptime(match.group("date"), "%Y%m%d").date()
            except Exception:
                date = None
                logging.error("An error when parse date from file name")

            if not latest_date or (date and date > latest_date):
                latest_file = f"{directory}/{filename}"
                latest_date = date

    return FileInfo(latest_file, latest_date)


def render_template(template_path, filepath, data=[]):
    with open(template_path, "r") as template_file:
        template = template_file.read().replace("$table_json", str(data))
    with open(filepath, "w") as report_file:
        report_file.write(template)


def main(config):
    if config_from_file:
        config.update(config_from_file)

    setup_logging(config.get('LOG_FILE'))

    latest_log = get_latest_log(config['LOG_CATEGORY'])
    if not latest_log:
        logging.info('No log files yet')
        return

    report_date_string = latest_log.date.strftime("%Y.%m.%d")
    report_filename = f"report-{report_date_string}.html"
    report_file_path = os.path.join(config['REPORTS_DIR'], report_filename)

    if os.path.isfile(report_file_path):
        logging.info("Already up-to-date")
        return

    logging.info(f'Collecting data from "{os.path.normpath(latest_log.path)}"')

    log_records = extract_log_records(
        latest_log.path,
        parse_log_record,
        config.get('ERRORS_LIMIT')
    )

    report_data = generate_report(log_records, config['MAX_REPORT_SIZE'])

    render_template(REPORT_TEMPLATE_PATH, report_file_path, report_data)

    logging.info(f'Report saved to {os.path.normpath(report_file_path)}')


def load_user_config():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        '--config',
        help='Config file path',
        default=DEFAULT_CONFIG_PATH
    )
    args = parser.parse_args()

    if not args.config:
        return

    try:
        return load_config(args.config)
    except (json.JSONDecodeError, FileNotFoundError) as e:
        raise e


if __name__ == '__main__':
    try:
        config = load_user_config()
        main(copy.deepcopy(config))

    except FileNotFoundError as e:
        logging.error(f"File not found: {e}")
    except json.JSONDecodeError as e:
        logging.error(f"An error occured while parsing config file: {e}")
    except Exception as e:
        logging.error(f"An error occured: {e}")
else:
    try:
        config_from_file = load_user_config()
    except FileNotFoundError as e:
        logging.error(f"File not found: {e}")
    except json.JSONDecodeError as e:
        logging.error(f"An error while parsing config file: {e}")
