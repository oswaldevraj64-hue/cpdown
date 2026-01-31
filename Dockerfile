FROM python:3.11-slim

WORKDIR /app

COPY . /app

RUN python -m venv venv
RUN ./venv/bin/pip install --upgrade pip
RUN ./venv/bin/pip install -r Installer

CMD ["./venv/bin/python", "modules/main.py"]

