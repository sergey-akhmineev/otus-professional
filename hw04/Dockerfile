FROM python:3
WORKDIR /app
COPY . .
RUN chmod +x httpd.py
CMD ["./httpd.py", "-r", "/", "-p", "8080", "-w", "2"]