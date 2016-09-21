#!/bin/bash

source variables

docker-machine start $DOCKER_MACHINE_NAME
eval $(docker-machine env ${DOCKER_MACHINE_NAME})

docker-compose up -d
