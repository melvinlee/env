#!/bin/bash

set -e
source ./.versions

echo
echo "Installing aws cli..."
echo

if ! type pip &> /dev/null ; then
    echo "pip not install!"
    exit 1
fi

pip install awscli --upgrade
aws --version