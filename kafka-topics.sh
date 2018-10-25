#!/usr/bin/env bash

export HOST_IP=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | head -1 | cut -d\  -f2)
ZK="${HOST_IP}:$(docker-compose port zookeeper 2181 | cut -d: -f2)"
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -i -t wurstmeister/kafka /opt/kafka/bin/kafka-topics.sh --zookeeper $ZK "$@"
