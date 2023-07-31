#!/usr/bin/env python
# -*- coding: utf-8 -*-

import unittest
from worker import is_gzip_file, parse_log_record


class TestIsGzipFileFunction(unittest.TestCase):
    def test_is_gzip_file__xml(self):
        self.assertEqual(is_gzip_file("testpath/file.xml"), False)

    def test_is_gzip_file__txt(self):
        self.assertEqual(is_gzip_file("testpath/file.txt"), False)

    def test_is_gzip_file__gzip(self):
        self.assertEqual(is_gzip_file("testpath/file.gz"), True)


class TestParseRecord(unittest.TestCase):
    def test_parse_record(self):
        str = b'1.168.65.96 -  - [29/Jun/2017:03:50:23 +0300] "GET /api/v2/internal/banner/24288647/info HTTP/1.1" 200 351 "-" "-" "-" "1498697423-2539198130-4708-9752780" "89f7f1be37d" 0.072\n'
        self.assertEqual(parse_log_record(
            str), ("/api/v2/internal/banner/24288647", "0.072\n"))


if __name__ == '__main__':
    unittest.main()
