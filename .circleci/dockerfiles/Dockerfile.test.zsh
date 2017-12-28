FROM    debian:stretch-slim

RUN     apt-get update && \
        apt-get -y install zsh make curl sudo && \
        apt-get clean

WORKDIR /work
CMD     zsh
