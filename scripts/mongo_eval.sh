


docker exec -ti $(docker ps -f "name=mongo" -q) bash -c "mongo agile_data_science --eval 'db.origin_dest_distances.count()'"
docker exec -ti $(docker ps -f "name=mongo" -q) bash -c "mongo agile_data_science --eval 'db.origin_dest_distances.findOne()'"
