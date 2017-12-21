#!/bin/sh

set -exo pipefail

log() {
    # $1: test description
    >&2 echo "[LOG]: ${1}"
}

teardown() {
    docker ps -aq | xargs -r docker rm -f
}