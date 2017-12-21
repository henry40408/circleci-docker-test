#!/bin/bash

set -exo pipefail

docker run -d --name nginx nginx

docker run --network container:nginx jwilder/dockerize \
    dockerize -wait http://localhost echo "success"