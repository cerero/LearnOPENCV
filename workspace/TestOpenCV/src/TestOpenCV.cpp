#include <iostream>

#include "opencv2/opencv.hpp"
#include "dm01.h"

using namespace std;
using namespace cv;

int main(int argc, char **argv) {
	Mat image = cv::imread("../res/test.jpg", ImreadModes::IMREAD_COLOR);

	if (image.empty()) {
		cout << "can't load image" << endl;
		return 0;
	}

	namedWindow("Display Image", WINDOW_AUTOSIZE);
	imshow("Display Image", image);

	waitKey(0);
	return 0;
}
