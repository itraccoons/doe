FROM    debian:stretch-slim

RUN     apt-get update && \
        apt-get -y install zsh make && \
        apt-get clean

WORKDIR /work
CMD     zsh
