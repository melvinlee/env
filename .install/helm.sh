#!/bin/bash

set -e
source ./.versions

echo
echo "Installing helm ${HELM_VERSION}..."
echo

export DEBIAN_FRONTEND=noninteractive

apt-get update && \
    apt-get install -y curl
apt-get clean

curl -LOs https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz \
&& mkdir tmp \
&& tar xf helm-${HELM_VERSION}-linux-amd64.tar.gz -C tmp \
&& mv ./tmp/**/helm /usr/local/bin/ \
&& rm helm-${HELM_VERSION}-linux-amd64.tar.gz \
&& rm -rf tmp

helm version --client


