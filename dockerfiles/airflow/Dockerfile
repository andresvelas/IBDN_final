FROM apache/airflow:2.1.4

USER root

#export AIRFLOW_HOME=~/airflow

#AIRFLOW_HOME = ~/airflow

#mkdir $AIRFLOW_HOME/dags
#mkdir $AIRFLOW_HOME/plugins
#mkdir $AIRFLOW_HOME/logs

COPY ./dockerfiles/airflow/airflow-init.sh /docker-entrypoint-initdb.d/

RUN chmod 777 /docker-entrypoint-initdb.d/airflow-init.sh

