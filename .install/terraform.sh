#!/bin/bash

set -e
source ./.versions

echo
echo "Installing terraform ${TERRAFORM_VERSION}..."
echo

curl -LOs https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
&& unzip -d /usr/local/bin terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
&& rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

terraform --version