#!/bin/bash

set -e
source ./.versions

echo
echo "Installing httpie..."
echo

if ! type pip > /dev/null 2>&1 ; then
    	echo
	echo "pip not install!"
	echo
    	exit 1
fi

pip install httpie

echo
http --version
echo
