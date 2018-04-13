#!/bin/bash

set -e
source ./.versions

if ! type npm &> /dev/null ; then
    echo "npm not install!"
    exit 1;
fi  

echo
echo "Installing serverless..."
echo

npm install -g serverless
serverless --version