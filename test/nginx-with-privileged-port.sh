#!/bin/bash -exo pipefail

docker run -d -p 80:80 nginx

IP_ADDRESS=$(echo ${DOCKER_HOST} | egrep -o '([0-9]{1,3}[.]){3}[0-9]{1,3}')

echo "Docker IP address: ${IP_ADDRESS}"

curl http://${IP_ADDRESS}/