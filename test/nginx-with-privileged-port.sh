#!/bin/bash -eo pipefail

docker run -d -p 80:80 nginx

IP_ADDRESS=$(echo ${DOCKER_HOST} | grep '^([0-9]{1,3}\.){3}[0-9]{1,3}(\/([0-9]|[1-2][0-9]|3[0-2]))?$')

echo "Docker IP address: ${IP_ADDRESS}"

curl http://${IP_ADDRESS}/