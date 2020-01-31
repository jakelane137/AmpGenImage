#!/usr/bin/env bash
mkdir -p sw
cd sw
git clone https://github.com/root-project/root.git
cd root
mkdir install
cd install
cmake -DCMAKE_CXX_STANDARD=17 ..
make
cd ../../..
