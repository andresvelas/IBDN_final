#!/bin/bash

docker exec -it cassandra cqlsh -u cassandra -p cassandra cassandra -e "SELECT COUNT(*) FROM agile_data_science.flight_delay_classification_response;"
docker exec -it cassandra cqlsh -u cassandra -p cassandra cassandra -e "SELECT * FROM agile_data_science.flight_delay_classification_response LIMIT 1;"
