//============================================================================
// Name        : TestOpenCV.cpp
// Author      : jackwang
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

//#include "opencv2/opencv.hpp"
#include "demo/dm03_maskbit.h"
#include "demo/dm04_mat.h"
#include <iostream>
//using namespace std;
//using namespace cv;

int main(int argc, char **argv) {
//	Mat image = cv::imread("/Users/lisujia/Desktop/test.jpg", ImreadModes::IMREAD_COLOR);
//
//	if (image.empty()) {
//		cout << "can't load image" << endl;
//		return 0;
//	}
//
//	Mat outImage;
//	cv::cvtColor(image, outImage, COLOR_BGR2HLS);
//
//	namedWindow("Display Image", WINDOW_AUTOSIZE);
//	imshow("Display Image", image);
//
//	namedWindow("Output Image", WINDOW_AUTOSIZE);
//	imshow("Output Image", outImage);
//
//	cv::imwrite("/Users/lisujia/Desktop/test_COLOR_BGR2HLS.jpg", outImage);

//	waitKey(0);

//	test_dm03();
	test_dm04();
	return 0;
}