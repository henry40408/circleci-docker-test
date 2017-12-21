#!/bin/bash

set -exo pipefail

test "$(curl http://localhost)" = "foobar"