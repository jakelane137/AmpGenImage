#!/usr/bin/env bash
#source /sw/root/bin/thisroot.sh
git clone https://github.com/GooFit/AmpGen.git
cd AmpGen
git checkout jlane
git pull origin jlane
mkdir -p install
cd install
cmake -DCMAKE_CXX_STANDARD=14 ..
make
