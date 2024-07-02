#vamos a leer un mensaje del topic de kafka y lo vamos a guardar en un archivo json
from kafka import KafkaConsumer
import json
from kafka import KafkaConsumer
import json

# Configuración del consumidor Kafka
consumer = KafkaConsumer(
    'flight_delay_classification_response',
    bootstrap_servers='kafka:9092',  # Asegúrate de que esta dirección sea correcta
    auto_offset_reset='earliest',
    enable_auto_commit=True,
    value_deserializer=lambda x: json.loads(x.decode('utf-8'))
)

# Consumir mensajes
for message in consumer:
    print(f"Received message: {message.value}")
