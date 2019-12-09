#!/bin/bash

set -e
source ./.versions

echo
echo "Installing Kubectl..."
echo

curl -LOs https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl \
    && chmod +x ./kubectl \
    && mv ./kubectl /usr/local/bin/kubectl

kubectl version --short --client