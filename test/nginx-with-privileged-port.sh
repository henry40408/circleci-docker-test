#!/bin/bash -eo pipefail

docker run -d -p 80:80 nginx

curl http://${DOCKER_HOST}/