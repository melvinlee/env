#!/bin/bash

set -e
source ./.versions

echo
echo "Installing pip..."
echo

yum -y update
yum -y install python-pip
yum clean all 

pip install --upgrade pip
pip --version