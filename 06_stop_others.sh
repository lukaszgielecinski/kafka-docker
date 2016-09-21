#!/bin/bash

source variables
source stoppedLeader

eval $(docker-machine env $DOCKER_MACHINE_NAME)

BROKER_IDS=(101 102 103)

for i in ${BROKER_IDS[@]}; do

	if [ "${i}" -ne "${STOPPED_LEADER}" ]
	then
		docker stop kafka_${i}
	fi

done
