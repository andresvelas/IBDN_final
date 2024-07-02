FROM bitnami/cassandra:latest



# Copiar script de inicialización para crear keyspace
COPY ./dockerfiles/cassandra/keyspace.py /docker-entrypoint-initdb.d/keyspace.py

USER root
#ejecuta pip install cassandra-driver
RUN pip install cassandra-driver

