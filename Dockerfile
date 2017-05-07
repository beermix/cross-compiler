FROM debian:stretch

RUN apt-get update && apt-get -y dist-upgrade && apt-get -y install \
    bash gcc g++ binutils dh-exec \
    curl wget \
    pkg-config make automake autogen libtool libtool-bin \
    libpcre3-dev bison yodl \
    tar xz-utils bzip2 gzip \
    git libpcre3-dev bison autoconf-archive zlib1g-dev yasm nasm re2c \
    sed
