FROM ubuntu:16.04

ENV HOME /bitzeny_miner

RUN \
  apt-get update && \
  apt-get install -y \
    gcc \
    libcurl4-openssl-dev \
    automake \
    make \
    git

WORKDIR $HOME
RUN \
  git clone https://github.com/bitzeny/cpuminer.git && \
  cd cpuminer && \
  ./autogen.sh && \
  ./configure CFLAGS="-O3 -march=native -funroll-loops -fomit-frame-pointer" && \
  make
RUN cp cpuminer/minerd /usr/local/bin
