#! /bin/sh

rm -rf opencv_lib
mkdir opencv_lib

cd opencv_lib
mkdir build
mkdir release

cmake -S ../opencv_source -B ./build -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=./release/


# mac下链接openCV的一些参数
# linker
# -stdlib=libc++
#
# opencv_highgui
# opencv_imgcodecs
# opencv_imgproc
# opencv_core
#
# compile
# -c -fmessage-length=0 -std=c++11
#
# Build step
# install_name_tool -add_rpath /Users/lisujia/workspace/LearnOPENCV/opencv_lib/release/lib ./TestOpenCV
