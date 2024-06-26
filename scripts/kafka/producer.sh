

docker exec -ti $(docker ps -f "name=kafka" -q) bash -c "opt/bitnami/kafka/bin/kafka-console-producer.sh --topic flight_delay_classification_request --bootstrap-server kafka:9092 < $1 \ $2"
