#!/bin/bash

set -exo pipefail

apk add --no-cache curl

test "$(curl http://localhost)" = "foobar"