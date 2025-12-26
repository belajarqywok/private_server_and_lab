#!/bin/sh

cd build
cmake .. -DCMAKE_CXX_COMPILER=clang++
cmake --build .
cd ..
./build/cpp_rest
