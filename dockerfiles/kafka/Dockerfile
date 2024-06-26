FROM bitnami/kafka:3.4.0

USER root

COPY ./dockerfiles/kafka/kafka-init.sh /opt/bitnami/kafka/kafka-init.sh

RUN chmod 777 /opt/bitnami/kafka/kafka-init.sh

ENTRYPOINT [ "/opt/bitnami/kafka/kafka-init.sh" ]