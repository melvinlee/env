#!/bin/bash

set -e
source ./.versions

echo
echo "Installing git..."
echo

yum -y update
yum -y install git
yum clean all 