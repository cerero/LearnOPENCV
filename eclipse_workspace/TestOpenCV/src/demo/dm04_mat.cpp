/*
 * dm04_mat.cpp
 *
 *  Created on: Jan 25, 2019
 *      Author: lisujia
 */

#include "opencv2/opencv.hpp"
#include "dm04_mat.h"
#include <cstdio>
#include <iostream>
#include <cmath>

using namespace cv;
using namespace std;

int test_dm04() {
	Mat src = imread("/Users/lisujia/Desktop/test.jpg");
	if (src.empty()) {
		return -1;


	}

	namedWindow("input", WINDOW_AUTOSIZE);
	imshow("intput", src);

//	Mat dst = Mat(src.size(), src.type());
//	Mat dst = src.clone();
//	Mat dst;
//	src.copyTo(dst);

	Mat dst;
	cvtColor(src, dst, COLOR_BGR2GRAY);
	cout << "intput channel: " << src.channels() << endl;
	cout << "output channel: " << dst.channels() << endl;

	namedWindow("output", WINDOW_AUTOSIZE);
	imshow("output", dst);

	const uchar* first_row = dst.ptr<uchar>(0);
	printf("first pixel value: %d\n", *first_row);
	int cols = dst.cols;
	int rows = dst.rows;
	printf("cols:%d, rows:%d\n", cols, rows);
//	cout << "first pixel value: " << *first_row << endl;

//	其中前两个参数分别表示行(row)跟列(column)、
//	第三个CV_8UC3中的8表示每个通道占8位、U表示无符号、C表示Char类型、3表示通道数目是3，
//	第四个参数是向量表示初始化每个像素值是多少，向量长度对应通道数目一致
//	Mat redMat = Mat(200, 200, CV_8UC3, Scalar(0, 0, 255));
	namedWindow("red", WINDOW_AUTOSIZE);
//	imshow("red", redMat);

	Mat m1;
	m1.create(src.size(), src.type());
	m1 = Scalar(0, 0, 255);

	imshow("red", m1);
	waitKey(0);
	return 0;
}
