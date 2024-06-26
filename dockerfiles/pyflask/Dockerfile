FROM python:3.8-slim

WORKDIR /app

COPY ./practica_creativa /app

RUN pip install -r practiva_creativa/requirements.txt

USER root

ENV PROJECT_HOME /app/practica_creativa

WORKDIR $PROJECT_HOME
ENTRYPOINT ["python3", "resources/web/predict_flask.py"]