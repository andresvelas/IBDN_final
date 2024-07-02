#vamos a inicir sesion en cassandra y crear un keyspace
from cassandra.cluster import Cluster #cassa
from cassandra.auth import PlainTextAuthProvider

auth_provider = PlainTextAuthProvider(username='cassandra', password='cassandra')
cluster = Cluster(['localhost'], auth_provider=auth_provider)
session = cluster.connect()


'''
Traceback (most recent call last):
  File "/home/ibdn/IBDN_final/dockerfiles/cassandra/keyspace.py", line 6, in <module>
    cluster = Cluster(['cassandra'], auth_provider=auth_provider)
  File "cassandra/cluster.py", line 1231, in cassandra.cluster.Cluster.__init__
cassandra.UnresolvableContactPoints: {}

Connected to Test Cluster at cassandra:9042
 
el error se debe a que no se ha especificado el puerto, se debe especificar el puerto 9042
cluster
'''




'''
CREATE KEYSPACE IF NOT EXISTS agile_data_science
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

'''
session.execute("CREATE KEYSPACE IF NOT EXISTS agile_data_science WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};")
'''
-- Utilizar el keyspace agile_data_science
USE agile_data_science;

-- Crear la tabla con las columnas especificadas
CREATE TABLE IF NOT EXISTS flight_delay_classification_response (
    Carrier TEXT,
    DayOfMonth INT,
    DayOfWeek INT,
    DayOfYear INT,
    DepDelay INT,
    Dest TEXT,
    Distance INT,
    FlightDate TEXT,
    Origin TEXT,
    Prediction INT,
    Route TEXT,
    Timestamp TEXT,
    PRIMARY KEY (Carrier, FlightDate)
);


'''
session.execute("USE agile_data_science;")
session.execute("CREATE TABLE IF NOT EXISTS flight_delay_classification_response (Carrier TEXT, DayOfMonth INT, DayOfWeek INT, DayOfYear INT, DepDelay INT, Dest TEXT, Distance INT, FlightDate TEXT, Origin TEXT, Prediction INT, Route TEXT, Timestamp TEXT, PRIMARY KEY (Carrier, FlightDate));")