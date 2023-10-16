FROM python:3
WORKDIR /hw04
COPY . .
RUN chmod +x httpd.py
CMD ["./httpd.py", "-r", "/", "-p", "8080", "-w", "2"]