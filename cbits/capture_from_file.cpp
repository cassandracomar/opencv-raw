#include "capture_from_file.hpp"
using namespace cv;
using namespace std;

VideoCapture* cv_create_VideoCapture_file(const char *filename) {
  string fname (filename);
  return new VideoCapture(filename);
}
