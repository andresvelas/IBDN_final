FROM bitnami/cassandra:latest

COPY ./dockerfiles/cassandra/create_keyspace.cql /docker-entrypoint-initdb.d/create_keyspace.cql

ENV CASSANDRA_PORT=9042
ENV CASSANDRA_USER=cassandra
ENV CASSANDRA_PASSWORD=cassandra
