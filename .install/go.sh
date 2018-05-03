#!/bin/bash

set -e
source ./.versions

echo
echo "Installing golang..."
echo

apt-get update && \
apt-get install -y golang-go
apt-get clean