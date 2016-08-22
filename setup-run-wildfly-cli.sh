#!/usr/bin/env bash

set -a
set -e
set -u

NET_NAME="naming-service-net"
DNS_IP="10.0.0.72"

# Create image
./build.sh

# Create docker network
./create-net.sh ${NET_NAME}

# Run postgres
./run-wildfly-cli.sh ${NET_NAME} ${DNS_IP}
