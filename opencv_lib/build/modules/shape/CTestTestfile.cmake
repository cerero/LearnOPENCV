# CMake generated Testfile for 
# Source directory: /Users/lisujia/workspace/LearnOPENCV/opencv_source/modules/shape
# Build directory: /Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/modules/shape
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_shape "/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/bin/opencv_test_shape" "--gtest_output=xml:opencv_test_shape.xml")
set_tests_properties(opencv_test_shape PROPERTIES  LABELS "Main;opencv_shape;Accuracy" WORKING_DIRECTORY "/Users/lisujia/workspace/LearnOPENCV/opencv_lib/build/test-reports/accuracy")
