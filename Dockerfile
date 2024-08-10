FROM python:3.11-slim

RUN mkdir /app
COPY . /app

WORKDIR /app

RUN apt update -y && apt install vim -y \ 
    && pip install -U pip \
    && pip install -r requirements.txt

ENV PYTHONPATH=/app

CMD ["python", "/app/src/main.py"]