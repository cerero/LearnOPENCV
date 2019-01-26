# CMake generated Testfile for 
# Source directory: /Users/lisujia/workspace/LearnOPENCV/opencv_source/modules/flann
# Build directory: /Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/modules/flann
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_flann "/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/bin/opencv_test_flann" "--gtest_output=xml:opencv_test_flann.xml")
set_tests_properties(opencv_test_flann PROPERTIES  LABELS "Main;opencv_flann;Accuracy" WORKING_DIRECTORY "/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/test-reports/accuracy")
