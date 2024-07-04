

echo "Número de documentos importados dentro de la colección origin_dest_distances del db agile_data_science"
docker exec -it mongo bash -c "mongo agile_data_science --eval 'db.origin_dest_distances.count()'"
docker exec -ti mongo bash -c "mongo agile_data_science --eval 'db.origin_dest_distances.findOne()'"

echo "Comprobación de que se guarada las predicciones en la colleción flight_delay_classification_response"
docker exec -it mongo bash -c "mongo agile_data_science --eval 'db.flight_delay_classification_response.count()'"
docker exec -it mongo bash -c "mongo agile_data_science --eval 'db.flight_delay_classification_response.findOne()'"
