#!/bin/bash -exo pipefail

docker run -d --name nginx nginx

docker run --network nginx:nginx jwilder/dockerize dockerize -wait http://nginx echo "success"