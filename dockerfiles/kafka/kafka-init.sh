#!/bin/bash

opt/bitnami/kafka/bin/zookeeper-server-start.sh opt/bitnami/kafka/config/zookeeper.properties &

opt/bitnami/kafka/bin/kafka-server-start.sh opt/bitnami/kafka/config/server.properties &

sleep 5

opt/bitnami/kafka/bin/kafka-topics.sh \
    --create \
    --bootstrap-server kafka:9092 \
    --replication-factor 1 \
    --partitions 1 \
    --topic flight_delay_classification_request

opt/bitnami/kafka/bin/kafka-topics.sh \
    --create \
    --bootstrap-server kafka:9092 \
    --replication-factor 1 \
    --partitions 1 \
    --topic flight_delay_classification_response
tail -f /dev/null # to keep the container running