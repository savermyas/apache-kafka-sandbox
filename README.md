# Apache Kafka Sandbox
Sandbox with Apache Kafka environment in Docker and bunch of scripts to play around

# Pre-requisites
  * Docker (tested with version 18.09.0-ce-beta1)
  * Docker Compose (tested with version 1.22.0)

# Getting started

   ```bash
   export MY_IP_ADDRESS=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | head -1 | cut -d\  -f2)
   docker-compose up -d
   ```

