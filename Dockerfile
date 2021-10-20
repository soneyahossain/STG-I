FROM ubuntu:20.04 

USER root

# STG-Q environment variables
ENV STGI_HOME=/stgi
ENV STGI_INC=/usr/local/include/stgi
ENV STGI_SCRIPT_DIR=/stgi/scripts
ENV STGI_EXAMPLE_DIR=/stgi/examples
ENV STGI_LIB=/usr/local/lib/stgi
ENV LLVM_DIR=/usr/lib/llvm-11
ENV GTEST=/usr/src/gtest/include

# Various base packages
RUN apt-get update -y && env DEBIAN_FRONTEND=noninteractive apt install --no-install-recommends -y scons bison flex g++ nasm sharutils gcc-multilib g++-multilib autoconf libelf-dev coreutils makeself cmake git unzip wget build-essential automake flex bison libglib2.0-dev openssl sudo fakeroot file ed texinfo 
RUN env DEBIAN_FRONTEND=noninteractive apt-get install -y lld-11 llvm-11 llvm-11-dev clang-11 llvm-11-runtime || sudo env DEBIAN_FRONTEND=noninteractive apt-get install -y lld llvm llvm-dev clang
RUN env DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends --reinstall ca-certificates

# Copy local copy
COPY . /stgi

# Install STGI
WORKDIR /stgi 

RUN ./scripts/register-clang-version.sh 11
RUN ./scripts/install_gtest.sh
RUN ./scripts/install_stgi.sh

# ENTRYPOINT [ "/stgi/scripts/docker/stgi_entrypoint.sh" ]
# CMD ["help"]
