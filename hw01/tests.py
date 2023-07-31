import unittest
from worker import load_config, generate_report, parse_log_record


class TestWorkerMethods(unittest.TestCase):

    def test_load_config(self):
        config = load_config('config.json')
        self.assertIsInstance(config, dict)

    def test_generate_report(self):
        records = [('url1', 1), ('url2', 2)]
        data = generate_report(records, 2)
        self.assertIsInstance(data, list)
        self.assertEqual(len(data), 2)

    def test_parse_log_record(self):
        line = b'1.196.116.32 -  - [29/Jun/2017:03:50:22 +0300] "GET /api/v2/banner/24987703 HTTP/1.1" 200 883 "-" "Lynx/2.8.8dev.9 libwww-FM/2.14 SSL-MM/1.4.1 GNUTLS/2.10.5" "-" "1498697422-2190034393-4708-9752753" "dc7161be3" 0.726'
        url, duration = parse_log_record(line)
        self.assertEqual(url, '/api/v2/banner/24987703')
        self.assertEqual(duration, '0.726')

        url, duration = parse_log_record(line)
        self.assertEqual(url, '/api/v2/banner/24987703')
        self.assertEqual(duration, '0.726')


if __name__ == '__main__':
    unittest.main()
