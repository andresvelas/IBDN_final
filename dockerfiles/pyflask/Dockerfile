FROM python:3.8

WORKDIR /app

COPY practica_creativa /app

WORKDIR /app/practica_creativa

#update pip
RUN pip install --upgrade pip

RUN pip install -r /app/requirements.txt

USER root

ENV PROJECT_HOME /app

WORKDIR $PROJECT_HOME
ENTRYPOINT ["python3", "resources/web/predict_flask.py"]