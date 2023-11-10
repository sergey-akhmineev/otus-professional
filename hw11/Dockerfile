# Используем официозный образ Python
FROM python:3.10

# Устанавливаем рабочую директорию в контейнере
WORKDIR /app

# Копируем файлы скрипта в рабочую директорию
COPY . /app

# Устанавливаем зависимости
RUN pip install --no-cache-dir aiohttp async_timeout

# Выполняем скрипт и ограничиваем его выполнение 30 минутами
CMD /bin/sh -c "timeout 1800 python ./YCrawler.py"