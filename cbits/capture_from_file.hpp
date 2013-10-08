#ifndef __CAPTURE_FROM_FILE_HPP
#define __CAPTURE_FROM_FILE_HPP

#include <opencv2/opencv.hpp>
using namespace cv;
using namespace std;

extern "C" {
VideoCapture* cv_create_VideoCapture_file(const char*);
}

#endif
