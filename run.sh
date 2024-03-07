#! /bin/bash

cd build

source emsdk_env.sh
emcmake cmake ..

make

cd ..

