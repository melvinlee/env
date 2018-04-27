#!/bin/bash

set -e
source ./.versions

echo 
echo "Installing sudo..."
echo

apt-get install -y sudo

echo '' >> /etc/sudoers
echo '## Not password sudo' >> /etc/sudoers
echo 'melvin ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
