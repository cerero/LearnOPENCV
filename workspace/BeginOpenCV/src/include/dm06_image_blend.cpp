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
	Mat src1, src2, dst;
	src1 = imread("D:/vcprojects/images/LinuxLogo.jpg");
	src2 = imread("D:/vcprojects/images/win7logo.jpg");
	if (!src1.data) {
		cout << "could not load image Linux Logo..." << endl;
		return -1;
	}
	if (!src2.data) {
		cout << "could not load image WIN7 Logo..." << endl;
		return -1;
	}

	double alpha = 0.5;
	/**
	 * 线性混合：两张图的大小、类型必须一致
	 * **/
	if (src1.rows == src2.rows && src1.cols == src2.cols && src1.type() == src2.type()) {
		//dst = src1*alpha + src2*beta + gamma;
//		 addWeighted(src1, alpha, src2, (1.0 - alpha), 0.0, dst);
		 multiply(src1, src2, dst, 1.0);

		imshow("linuxlogo", src1);
		imshow("win7logo", src2);
		namedWindow("blend demo", WINDOW_AUTOSIZE);
		imshow("blend demo", dst);
	}
	else {
		printf("could not blend images , the size of images is not same...\n");
		return -1;
	}

	waitKey(0);
	return 0;
}


