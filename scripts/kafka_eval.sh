#!/bin/bash

# Verifica que se ha proporcionado un mensaje
if [ -z "$1" ]; then
  echo "Uso: $0 <mensaje>"
  exit 1
fi

mensaje="$1"

echo "Kafka Eval"
echo "List Topics"
docker exec -i $(docker ps -f "name=kafka" -q) bash -c "/opt/bitnami/kafka/bin/kafka-topics.sh --list --bootstrap-server kafka:9092"

echo "Produciendo mensaje al topic flight_delay_classification_request"
echo "$mensaje" | docker exec -i $(docker ps -f "name=kafka" -q) bash -c "/opt/bitnami/kafka/bin/kafka-console-producer.sh --topic flight_delay_classification_request --bootstrap-server kafka:9092"

echo "Consumiendo mensaje del topic flight_delay_classification_request"
docker exec -i $(docker ps -f "name=kafka" -q) bash -c "/opt/bitnami/kafka/bin/kafka-console-consumer.sh --topic flight_delay_classification_request --bootstrap-server kafka:9092 --from-beginning --max-messages 50"
echo "Fin de Kafka Eval"