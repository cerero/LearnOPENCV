/*
 * dm03_maskbit.cpp
 *
 *  Created on: Jan 24, 2019
 *      Author: lisujia
 */
#include "opencv2/opencv.hpp"
#include "dm03_maskbit.h"
#include <iostream>
#include <cmath>

using namespace cv;
using namespace std;

/**
 * 掩膜操作实现对比度
 * **/
int test_dm03() {
	Mat src, dst;
	src = cv::imread("/Users/lisujia/Desktop/test.jpg", ImreadModes::IMREAD_COLOR);

	if (!src.data) {
		cout << "can't load image" << endl;
		return -1;
	}

	namedWindow("Display Image", WINDOW_AUTOSIZE);
	imshow("Display Image", src);

// 	自己实现掩膜操作
//	int cols = (src.cols - 1) * src.channels();
//	int col_step = src.channels();
//	int rows = src.rows - 1;
//	重置为0，保持与src一样大小、一样的彩色空间
//	dst = Mat::zeros(src.size(), src.type());
//	[0 -1 0]
//	[-1 5 -1]
//	[0 -1 0]
//	for (int row = 1; row < rows; row++) {
//		uchar *pre_row = src.ptr<uchar>(row - 1);
//		uchar *cur_row = src.ptr<uchar>(row);
//		uchar *nxt_row = src.ptr<uchar>(row + 1);
//
//		uchar *output_cur_row = dst.ptr<uchar>(row);
//
//		for (int col = col_step; col < cols; col++) {
//			output_cur_row[col] = saturate_cast<uchar>(5 * cur_row[col] -
//					pre_row[col] -
//					nxt_row[col] -
//					cur_row[col - col_step] -
//					cur_row[col + col_step]);
//		}
//	}

	double t = (double)getTickCount();
	//通过openCV内部函数快速实现掩膜操作
	Mat kernel = (Mat_<char>(3, 3) << 0, -1, 0, -1, 5, -1, 0, -1, 0);
	filter2D(src, dst, src.depth(), kernel);
	t = (getTickCount() - t) / getTickFrequency();

	cout << "Buit-in filter2D time passed in seconds:  " << t << endl;
	namedWindow("after Image", WINDOW_AUTOSIZE);
	imshow("after Image", dst);
	waitKey(0);
	return 0;
}
