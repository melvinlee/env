FROM ubuntu

WORKDIR home

COPY . . 


RUN .install/core.sh

RUN .install/sudo.sh
RUN .install/zsh.sh
RUN .install/neovim.sh
RUN .install/node.sh
RUN .install/serverless.sh
RUN .install/pip.sh
#RUN .install/awscli.sh
RUN .install/httpie.sh

CMD ["/bin/zsh","-l"] 
