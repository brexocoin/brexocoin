FROM debian:stretch
LABEL maintainer="Brexocoin Developers <dev@brexocoin.org>"
LABEL description="Dockerised BrexocoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
