#!/bin/sh

git clone https://github.com/google/protobuf.git
cd protobuf && ./configure --prefix=/usr && make && make install