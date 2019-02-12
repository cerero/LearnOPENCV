cmake_minimum_required (VERSION 2.6)

project (TestOpenCV)

SET(CMAKE_C_COMPILER g++)
if(CMAKE_COMPILER_IS_GNUCXX)
	#set(CMAKE_CXX_FLAGS "-std=c++11 -stdlib=libc++ ${CMAKE_CXX_FLAGS}")
	#add_compile_options(-std=c++11)
	message(STATUS "optional:-std=c++11")

endif(CMAKE_COMPILER_IS_GNUCXX)

set(CMAKE_CXX_FLAGS "-std=c++11 -stdlib=libc++ ${CMAKE_CXX_FLAGS}")

#head file path，头文件目录
INCLUDE_DIRECTORIES(
"src/include" "/Users/lisujia/workspace/LearnOPENCV/opencv_lib/release/include/opencv4"
)

AUX_SOURCE_DIRECTORY(
src DIR_SRCS
)

#${CMAKE_HOME_DIRECTORY}/../opencv_lib/release/lib
link_directories(
"/Users/lisujia/workspace/LearnOPENCV/opencv_lib/release/lib"
)

#add executable file，添加要编译的可执行文件
add_executable(TestOpenCV ${DIR_SRCS})

#add link library，添加可执行文件所需要的库，比如我们用到了libm.so（命名规则：lib+name+.so），就添加该库的名称
TARGET_LINK_LIBRARIES(${PROJECT_NAME} 
opencv_highgui opencv_imgcodecs opencv_imgproc opencv_core
)