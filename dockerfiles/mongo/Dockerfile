# dockerfile mongo
FROM mongo:4.4.6


USER root

#GPG key for the MongoDB repository has expired
RUN apt-key del 656408E390CFB1F5 && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 656408E390CFB1F5

#Install curl to download data
RUN apt-get update && apt-get install -y curl

WORKDIR /practica_mongo

COPY practica_creativa ./practica_creativa

WORKDIR /practica_mongo/practica_creativa

#Download data 
RUN ./resources/download_data.sh


USER root 
COPY ./dockerfiles/mongo/mongo-init.js /docker-entrypoint-initdb.d/

RUN chmod 777 /docker-entrypoint-initdb.d/mongo-init.js

#todo lo que se copie en la carpeta /docker-entrypoint-initdb.d/ se ejecutara al iniciar el contenedor desde el direct

EXPOSE 27017    



