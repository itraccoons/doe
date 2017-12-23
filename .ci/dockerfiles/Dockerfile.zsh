FROM    debian:stretch-slim

RUN     apt-get update && \
        apt-get -y install zsh && \
        apt-get clean

WORKDIR /work
CMD     zsh
