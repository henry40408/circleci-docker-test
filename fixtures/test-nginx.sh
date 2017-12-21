#!/bin/sh

set -exo pipefail

apk add --no-cache curl

RESPONSE="$(curl http://localhost)"

test "${RESPONSE}" = "foobar"