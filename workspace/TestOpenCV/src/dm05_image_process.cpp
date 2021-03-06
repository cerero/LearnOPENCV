#include "dm05_image_process.h"
#include <iostream>
#include "opencv2/opencv.hpp"
using namespace cv;
using namespace std;

int test_dm05() {
	Mat src = imread("./resource/test.jpg", cv::ImreadModes::IMREAD_COLOR);
	if (src.data == NULL) {
		cout << "read image error!!" << endl;
		return -1;
	}

	imshow("input", src);

	Mat dst;
	/*
//	cvtColor(src, dst, cv::COLOR_BGR2GRAY);
	src.copyTo(dst);
//	dst.create(src.size(), src.type());
	int rows = dst.rows;
	int cols = dst.cols;
	int ch = dst.channels();

	//取反差
	for (int row = 0; row < rows; row++) {
		for (int col = 0; col < cols; col++) {
			if (ch == 1) {
				dst.at<uchar>(row, col) = 255 - dst.at<uchar>(row, col);
			} else if (ch == 3) {
//				dst.at<Vec3b>(row, col)[0] = 255 - src.at<Vec3b>(row, col)[0];
//				dst.at<Vec3b>(row, col)[1] = 255 - src.at<Vec3b>(row, col)[1];
//				dst.at<Vec3b>(row, col)[2] = 255 - src.at<Vec3b>(row, col)[2];
				dst.at<Vec3b>(row, col)[0] = 255 - dst.at<Vec3b>(row, col)[0];
				dst.at<Vec3b>(row, col)[1] = 255 - dst.at<Vec3b>(row, col)[1];
				dst.at<Vec3b>(row, col)[2] = 255 - dst.at<Vec3b>(row, col)[2];
			}
		}
	}
	*/
	bitwise_not(src, dst);
	imshow("output", dst);

	waitKey(0);
	return 0;
}
