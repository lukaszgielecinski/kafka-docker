#!/bin/bash

source variables

java -jar zookeeper-query-1.0-SNAPSHOT.jar describeTopic ${TOPIC_NAME}
