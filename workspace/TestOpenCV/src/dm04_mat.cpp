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
/**
 * Mat对象构造函数与常用方法
 *
 *
 *
构造函数
Mat()
Mat(int rows, int cols, int type)
Mat(Size size, int type)
Mat(int rows, int cols, int type, const scalar &s)
Mat(Size size, int type, const Scalar &s)
Mat(int ndims, const int *sizes, int type)
Mat(int ndims, const int *sizes, int type, const Scalar &s)

常用方法：
void copyTo(Mat mat)
void convertTo(Mat dst, int type)
Mat clone()
int channels()
int depth()
bool empty();
uchar* ptr(i=0)


 *
 * **/
int test_dm04() {
	Mat src = imread("/Users/lisujia/Desktop/test.jpg");
	if (src.empty()) {
		return -1;
	}

	namedWindow("input", WINDOW_AUTOSIZE);
	namedWindow("output", WINDOW_AUTOSIZE);

	imshow("intput", src);

	/*
	Mat dst;
	dst = Mat(src.size(), src.type());
	dst = Scalar(127, 0, 255);
	imshow("output", dst);
	*/

	//克隆，完全拷贝
	//	Mat dst;
	//	src.copyTo(dst);
	/*
	Mat dst = src.clone();
	imshow("output", dst);
	*/

	Mat dst;
	cvtColor(src, dst, COLOR_BGR2GRAY);
	imshow("output", dst);
	cout << "intput channel: " << src.channels() << endl;
	//灰度图像只有一个通道
	cout << "output channel: " << dst.channels() << endl;

	const uchar* first_row = dst.ptr<uchar>(0);
	printf("first pixel value: %d\n", *first_row);

	int cols = dst.cols;
	int rows = dst.rows;
	printf("cols:%d, rows:%d\n", cols, rows);
//	cout << "first pixel value: " << *first_row << endl;

//	其中前两个参数分别表示行(row)跟列(column)、
//	第三个CV_8UC3中的8表示每个通道占8位、U表示无符号、C表示Char类型、3表示通道数目是3，
//	第四个参数是向量表示初始化每个像素值是多少，向量长度对应通道数目一致
	Mat redMat = Mat(3, 3, CV_8UC3, Scalar(0, 0, 255));
	namedWindow("red", WINDOW_AUTOSIZE);
	imshow("red", redMat);
	cout << "M=" << endl << redMat << endl;
/*
	Mat m1;
	m1.create(src.size(), src.type());
	m1 = Scalar(0, 0, 255);

	imshow("red", m1);
*/

	//定义小数组
	Mat C = (Mat_<double>(3, 3) << 0, -1, 0, -1, 5, -1, 0, -1, 0);
	cout << "C = " << endl << " " << C << endl;

	filter2D(src, dst, -1, C);
	imshow("output", dst);


	//0填充
	Mat m2 = Mat::zeros(src.size(), CV_8UC1);
	imshow("output", m2);
	Mat m3 = Mat::eye(src.size(), CV_8UC1);

	waitKey(0);
	return 0;


}

