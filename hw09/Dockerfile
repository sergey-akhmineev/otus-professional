# Используем базовый образ Alpine Linux
FROM alpine:3.12

# Устанавливаем memcached и Python
RUN apk add --update memcached python3 py3-pip

# Устанавливаем зависимости Python
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

# Копируем скрипты Python или другие файлы, если они нужны
COPY . .

# Открываем порт для memcached
EXPOSE 11211

# Задаем команду для запуска memcached
CMD ["memcached", "-u", "daemon"]

# Возможно, вам также понадобится скрипт для запуска вашего Python приложения
