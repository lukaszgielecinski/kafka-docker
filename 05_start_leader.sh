#!/bin/bash

source variables
source stoppedLeader


eval $(docker-machine env $DOCKER_MACHINE_NAME)

docker start kafka_${STOPPED_LEADER}
