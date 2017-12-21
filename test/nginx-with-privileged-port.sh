#!/bin/bash

set -exo pipfail

docker run -d --name nginx nginx

docker run --network container:nginx jwilder/dockerize \
    dockerize -wait http://localhost echo "success"