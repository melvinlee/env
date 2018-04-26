#!/bin/bash

set -e
source ./.versions


if ! type pip > /dev/null 2>&1; then
	echo
	echo "Installing pip..."
	echo
	apt-get install -y python-pip
	apt-get clean
fi

echo
echo "Upgrading Pip..."
echo
pip install --upgrade pip==9.0.3

echo
pip --version
echo
