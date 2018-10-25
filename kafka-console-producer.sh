#!/usr/bin/env bash

export HOST_IP=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | head -1 | cut -d\  -f2)
BROKERS=$(docker-compose ps | grep 9092 | awk '{print $4}' | cut -d- -f1 | sed -e "s/0.0.0.0:/$HOST_IP:/g" | tr '\n' ',')
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -i -t wurstmeister/kafka /opt/kafka/bin/kafka-console-producer.sh --broker-list="$BROKERS" "$@"
