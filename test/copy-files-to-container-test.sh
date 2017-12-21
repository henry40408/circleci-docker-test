#!/bin/sh

set -exo pipefail

. ../lib/functions.sh

log "copy files to nginx root directory and compare response body with curl"

docker run -d --name nginx nginx
docker cp fixtures/index.html nginx:/usr/share/nginx/html/index.html

docker create -v /src --name file-container jwilder/dockerize
docker cp fixtures/test-nginx.sh file-container:/src

docker run \
    --network container:nginx \
    --volumes-from file-container \
    jwilder/dockerize \
    sh /src/test-nginx.sh

teardown