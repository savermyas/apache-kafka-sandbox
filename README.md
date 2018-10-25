# Apache Kafka Sandbox
Sandbox with Apache Kafka environment in Docker and bunch of scripts to play around.
Inspired by http://wurstmeister.github.io/kafka-docker/.

# Pre-requisites
  * Docker (tested with version 18.09.0-ce-beta1)
  * Docker Compose (tested with version 1.22.0)
  * Tmux

# Getting started

   ```bash
   export HOST_IP=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | head -1 | cut -d\  -f2)
   docker-compose up -d
   ```

# Experiments
## Hello, Kafka. First steps with console producer and consumer
Run the following script:
   ```bash
   tmux new -s kafka -d './kafka-console-producer.sh --topic=topic'
   tmux select-layout even-vertical
   tmux split-window -dv './kafka-console-consumer.sh --topic=topic'
   tmux attach -t kafka
   ```
Enter any messages in tmux window. It is a console producer. You will see them in the second window which is console
consumer.