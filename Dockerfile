#FROM debian:stretch
#FROM ubuntu:artful
#FROM debian:buster
#FROM ubuntu:xenial
#FROM debian:jessie
FROM debian:buster
#FROM ubuntu
#FROM debian

RUN apt-get update && apt-get -y dist-upgrade && apt-get -y  install \
    bash gcc \
    curl wget \
    pkg-config build-essential make automake autogen libtool yasm \
    libpcre3-dev bison yodl \
    tar xz-utils bzip2 gzip \
    git automake libpcre3-dev bison yodl autoconf-archive \
    rsync \
    sed \
    upx \
    bc \
    ca-certificates \
    file \
    ncurses-dev \
    pkg-config \
    libtool  libtool-bin \
    flex \
    pax
