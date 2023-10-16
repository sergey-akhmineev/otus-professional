FROM python:3
WORKDIR /app
RUN apt-get update && apt-get install -y apache2-utils
COPY . .
RUN chmod +x httpd.py
CMD ["./httpd.py", "-r", "/", "-p", "8080", "-w", "2"]