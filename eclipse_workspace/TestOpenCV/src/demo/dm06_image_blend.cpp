/*
 * dm06_image_blend.cpp
 *
 *  Created on: Jan 31, 2019
 *      Author: lisujia
 */
#include "dm06_image_blend.h"
#include <iostream>
#include "opencv2/opencv.hpp"
using namespace cv;
using namespace std;

int test_dm06() {
	Mat src = imread("/Users/lisujia/Desktop/test.jpg", cv::ImreadModes::IMREAD_COLOR);
	if (src.data == NULL) {
		cout << "read image error" << endl;
		return -1;
	}

	imshow("input", src);

	waitKey(0);
	return 0;
}


