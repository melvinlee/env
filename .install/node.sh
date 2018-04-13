#!/bin/bash

set -e
source ./.versions

echo
echo "Installing node..."
echo

curl --silent --location https://rpm.nodesource.com/setup_9.x | bash -
yum -y install nodejs

node --version