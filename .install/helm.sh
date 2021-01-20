#!/bin/bash

set -e
source ./.versions

echo
echo "Installing helm..."
echo

export DEBIAN_FRONTEND=noninteractive

apt-get update && \
    apt-get install -y curl
apt-get clean

curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

echo
helm version --client
echo

