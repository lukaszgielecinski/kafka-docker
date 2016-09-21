#!/bin/bash

rm stoppedLeader

source variables

eval $(docker-machine env ${DOCKER_MACHINE_NAME})

docker-compose down
docker kill `docker ps -aq`
docker rm `docker ps -aq`

docker-machine stop $DOCKER_MACHINE_NAME

