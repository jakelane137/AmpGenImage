#!/usr/bin/env bash
mkdir -p sw
cd sw
source sw/root/install/bin/thisroot.sh
git clone https://github.com/GooFit/AmpGen.git
cd AmpGen
git checkout jlane
git pull origin jlane
mkdir install
cd install
cmake -DCMAKE_CXX_STANDARD=17 ..
make
cd ../../../


