#include <iostream>

#include "opencv2/opencv.hpp"
#include "dm03_maskbit.h"
#include "dm04_mat.h"
#include "dm05_image_process.h"
#include "dm06_image_blend.h"

using namespace std;
using namespace cv;

int test_dm07();

int main(int argc, char **argv) {
//	Mat image = cv::imread("../res/test.jpg", ImreadModes::IMREAD_COLOR);
//
//	if (image.empty()) {
//		cout << "can't load image" << endl;
//		return 0;
//	}
//
//	namedWindow("Display Image", WINDOW_AUTOSIZE);
//	imshow("Display Image", image);
//
//	waitKey(0);

//	test_dm03();
//	test_dm04();
//	test_dm05();
//	test_dm06();
	test_dm07();

	return 0;
}
