# Install script for directory: /Users/lisujia/workspace/LearnOPENCV/opencv_source

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/lisujia/workspace/LearnOPENCV/opencv_lib/release")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE FILES "/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/cvconfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE FILES "/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/opencv2/opencv_modules.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/unix-install/opencv4.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv4/OpenCVModules.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv4/OpenCVModules.cmake"
         "/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/CMakeFiles/Export/lib/cmake/opencv4/OpenCVModules.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv4/OpenCVModules-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv4/OpenCVModules.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv4" TYPE FILE FILES "/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/CMakeFiles/Export/lib/cmake/opencv4/OpenCVModules.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv4" TYPE FILE FILES "/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/CMakeFiles/Export/lib/cmake/opencv4/OpenCVModules-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv4" TYPE FILE FILES
    "/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/unix-install/OpenCVConfig-version.cmake"
    "/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/unix-install/OpenCVConfig.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv4" TYPE FILE FILES
    "/Users/lisujia/workspace/LearnOPENCV/opencv_source/platforms/scripts/valgrind.supp"
    "/Users/lisujia/workspace/LearnOPENCV/opencv_source/platforms/scripts/valgrind_3rdparty.supp"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/3rdparty/zlib/cmake_install.cmake")
  include("/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/3rdparty/libjpeg-turbo/cmake_install.cmake")
  include("/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/3rdparty/libtiff/cmake_install.cmake")
  include("/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/3rdparty/libwebp/cmake_install.cmake")
  include("/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/3rdparty/libjasper/cmake_install.cmake")
  include("/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/3rdparty/libpng/cmake_install.cmake")
  include("/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/3rdparty/openexr/cmake_install.cmake")
  include("/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/3rdparty/protobuf/cmake_install.cmake")
  include("/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/3rdparty/ittnotify/cmake_install.cmake")
  include("/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/include/cmake_install.cmake")
  include("/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/modules/cmake_install.cmake")
  include("/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/doc/cmake_install.cmake")
  include("/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/data/cmake_install.cmake")
  include("/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/apps/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
