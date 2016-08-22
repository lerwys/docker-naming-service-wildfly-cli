#!/usr/bin/env bash

set -a
set -e
set -u

NET_NAME="$1"
DNS_IP="$2"

# Run wildfly client
docker run  --name naming-service-wildfly-cli --net ${NET_NAME} --dns ${DNS_IP} \
    -it --rm lerwys/docker-naming-service-wildfly-cli
