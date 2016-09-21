#!/bin/bash

source variables

eval $(docker-machine env $DOCKER_MACHINE_NAME)

docker exec kafka_101 opt/kafka_2.11-0.10.0.1/bin/kafka-topics.sh --create --topic $TOPIC_NAME --replication-factor 3 --partitions 1 --zookeeper 192.168.99.100:2181
