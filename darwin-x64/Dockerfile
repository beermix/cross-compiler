FROM cross-compiler:base

ENV CROSS_TRIPLE x86_64-apple-darwin14
ENV CROSS_ROOT /usr/${CROSS_TRIPLE}
ENV PATH ${PATH}:${CROSS_ROOT}/bin
ENV LD_LIBRARY_PATH /usr/lib/llvm-3.7/lib:${CROSS_ROOT}/lib
ENV PKG_CONFIG_PATH ${CROSS_ROOT}/lib/pkgconfig:${PKG_CONFIG_PATH}
ENV MAC_SDK_VERSION 10.10

RUN echo "deb http://apt.llvm.org/jessie/ llvm-toolchain-jessie-3.7 main" >> /etc/apt/sources.list && \
    curl http://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && \
    apt-get update && \
    apt-get install -y --force-yes clang-3.7 llvm-3.7-dev automake autogen \
                                   libtool libxml2-dev uuid-dev libssl-dev bash \
                                   patch make tar xz-utils bzip2 gzip sed cpio

RUN curl -L https://github.com/tpoechtrager/osxcross/archive/master.tar.gz | tar xz && \
    cd /osxcross-master/ && \
    curl -L -o tarballs/MacOSX${MAC_SDK_VERSION}.sdk.tar.xz https://www.dropbox.com/s/yfbesd249w10lpc/MacOSX${MAC_SDK_VERSION}.sdk.tar.xz && \
    ln -s /usr/bin/clang-3.7 /usr/bin/clang && \
    ln -s /usr/bin/clang++-3.7 /usr/bin/clang++ && \
    echo | SDK_VERSION=${MAC_SDK_VERSION} OSX_VERSION_MIN=10.6 UNATTENDED=1 ./build.sh && \
    mv /osxcross-master/target ${CROSS_ROOT} && \
    mkdir -p ${CROSS_ROOT}/lib && \
    cd / && \
    rm -rf /osxcross-master
