#!/bin/bash

source variables

eval $(docker-machine env $DOCKER_MACHINE_NAME)

LEADER_ID=`java -jar zookeeper-query-1.0-SNAPSHOT.jar leader ${TOPIC_NAME}`

docker stop kafka_${LEADER_ID}

echo "$LEADER_ID" > stopped_leader
