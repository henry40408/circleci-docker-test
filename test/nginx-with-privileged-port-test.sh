#!/bin/sh

set -exo pipefail

DIR="${BASH_SOURCE%/*}"
source ${DIR}/functions.sh

log "start nginx and ping the server"

docker run -d --name nginx nginx

docker run --network container:nginx jwilder/dockerize \
    dockerize -wait http://localhost echo "success"

teardown