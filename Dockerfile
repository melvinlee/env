FROM ubuntu

RUN adduser --home /home/melvin melvin -shell /bin/zsh

WORKDIR home/melvin
COPY --chown=melvin:melvin . . 

RUN .install/core.sh
RUN .install/sudo.sh
RUN .install/zsh.sh
RUN .install/pure.sh
RUN .install/neovim.sh
RUN .install/node.sh
RUN .install/go.sh

RUN .install/serverless.sh
RUN .install/pip.sh
#RUN .install/awscli.sh
RUN .install/httpie.sh

USER melvin

CMD ["/bin/zsh","-l"] 
