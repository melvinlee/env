FROM centos:7

WORKDIR home

COPY . . 

RUN .install/git.sh
RUN .install/neovim.sh
RUN .install/node.sh