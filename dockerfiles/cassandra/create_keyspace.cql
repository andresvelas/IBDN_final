CREATE KEYSPACE IF NOT EXISTS agile_data_science
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

USE agile_data_science;

CREATE TABLE IF NOT EXISTS flight_delay_classification_response (
  dayofweek int,
  dayofyear int,
  dayofmonth int,
  dest text,
  depdelay double,
  distance double,
  flightdate date,
  origin text,
  prediction double,
  timestamp timestamp,
  uuid text PRIMARY KEY
);
