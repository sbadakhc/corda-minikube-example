#!/bin/sh

set -eux

if [ -z "${1-}" ]; then
  exec java -jar corda.jar --config-file=${CONFIG_FILE} --no-local-shell --log-to-console
fi

exec java -jar corda-webserver.jar --config-file=${CONFIG_FILE} --log-to-console
