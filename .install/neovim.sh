#!/bin/bash

set -e
source ./.versions

echo
echo "Installing neovim..."
echo

apt-get install -y software-properties-common
add-apt-repository ppa:neovim-ppa/stable
apt-get update
apt-get install -y neovim

echo
nvim --version
echo
