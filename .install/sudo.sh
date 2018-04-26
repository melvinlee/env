#!/bin/bash

set -e
source ./.versions

echo 
echo "Installing sudo..."
echo

apt-get install -y sudo
