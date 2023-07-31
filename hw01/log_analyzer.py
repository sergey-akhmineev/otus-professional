#!/usr/bin/env python
# -*- coding: utf-8 -*-

config = {
    "REPORTS_DIR": "./reports",
    "LOG_DIR": "./log",

    # Разделяем длинную строку на две для устранения ошибки E501
    "LOG_FILE": "./log/log.log",
    "LOGS_DIR": "./nginx/logs",

    # Разделяем длинную строку на две для устранения ошибки E501
    "ERRORS_LIMIT": 25,
    "MAX_REPORT_SIZE": 1000
}

import worker  # Перемещаем импорт вниз для соответствия PEP8


def main():
    worker.main(config)
  

if __name__ == "__main__":
    main()
