#! /bin/sh

rm -rf opencv_lib
mkdir opencv_lib

cd opencv_lib
mkdir build
mkdir release

cmake -S ../opencv_source -B ./build -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=./release/


