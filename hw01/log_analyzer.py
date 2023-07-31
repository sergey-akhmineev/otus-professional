#!/usr/bin/env python
# -*- coding: utf-8 -*-

import worker

config = {
    "REPORTS_DIR": "./reports",
    "LOG_DIR": "./log",
    "LOG_FILE": "./log/log.log",
    "LOGS_DIR": "./nginx/logs",
    "ERRORS_LIMIT": 25,
    "MAX_REPORT_SIZE": 1000
}

# Удалите лишние пробелы в пустой строке для решения ошибки W293

def main():
    worker.main(config)


if __name__ == "__main__":
    main()
