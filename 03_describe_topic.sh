#!/bin/bash

source variables

eval $(docker-machine env $DOCKER_MACHINE_NAME)

java -jar zookeeper-query-1.0-SNAPSHOT.jar describeTopic ${TOPIC_NAME}
