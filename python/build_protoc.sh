#!/bin/sh

sudo apt-get install autoconf automake libtool

git clone https://github.com/google/protobuf.git
cd protobuf && ./configure --prefix=/usr && make && make install