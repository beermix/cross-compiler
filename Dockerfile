FROM ubuntu

RUN apt-get update && apt-get -y dist-upgrade && apt-get -y install \
    bash gcc \
    curl wget \
    pkg-config build-essential make automake autogen libtool \
    libpcre3-dev bison yodl \
    tar xz-utils bzip2 gzip \
    file nano mc p7zip-full cmake git automake libpcre3-dev bison yodl autoconf-archive \
    rsync \
    sed \
    upx
