#!/bin/bash

set -e
source ./.versions

if ! type npm > /dev/null 2>&1 ; then
    	echo
	echo "Npm not install!"
    	echo
	exit 1;
fi  

echo
echo "Installing serverless..."
echo

npm install -g serverless

echo
serverless --version
echo
