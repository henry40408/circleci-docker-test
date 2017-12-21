#!/bin/bash -exo pipefail

docker run -d -p 80:80 nginx

curl http://localhost/