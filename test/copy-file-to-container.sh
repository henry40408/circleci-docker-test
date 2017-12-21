#!/bin/bash

set -exo pipefail

docker run -d --name nginx nginx
docker cp index.html nginx:/usr/share/nginx/html/index.html

docker create -v /src --name file-container jwilder/dockerize
docker cp test/test-nginx.sh file-container:/src

docker run \
    --network container:nginx \
    --volumes-from file-container \
    jwilder/dockerize \
    bash /src/test-nginx.sh