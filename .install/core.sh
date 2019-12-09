#!/bin/bash

set -e
source ./.versions

echo
echo "Installing utilities..."
echo

apt-get update && \
apt-get install	-y curl \
	wget \
	openssh-client \
	git \
	unzip
apt-get clean
