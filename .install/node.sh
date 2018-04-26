#!/bin/bash

set -e
source ./.versions

echo
echo "Installing node..."
echo

curl -sL https://deb.nodesource.com/setup_10.x | bash -
apt-get install -y nodejs
apt-get clean

node --version
