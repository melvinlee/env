#!/bin/sh

set -e
source ./.versions

echo
echo "Installing neovim..."
echo

yum -y install epel-release
yum -y update
curl -o /etc/yum.repos.d/dperson-neovim-epel-7.repo https://copr.fedorainfracloud.org/coprs/dperson/neovim/repo/epel-7/dperson-neovim-epel-7.repo 
yum -y install neovim
yum clean all

nvim --version