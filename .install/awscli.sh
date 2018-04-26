#!/bin/bash

set -e
source ./.versions

echo
echo "Installing aws cli..."
echo

if ! type pip > /dev/null 2>&1 ; then
    	echo
	echo "Pip not install! Unable to proceed."
    	echo
	exit 1
fi

pip install awscli --upgrade

echo
aws --version
echo
