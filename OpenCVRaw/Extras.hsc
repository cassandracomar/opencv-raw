{-# LANGUAGE ForeignFunctionInterface #-}

module OpenCVRaw.Extras where

import Foreign.C

#include <opencv2/opencv.hpp>

c'CV_DECOMP_LU0 :: CInt
c'CV_DECOMP_LU0 = 0

c'CV_DECOMP_CHOLESKY0 :: CInt
c'CV_DECOMP_CHOLESKY0 = 3

c'CV_DECOMP_SVD0 :: CInt
c'CV_DECOMP_SVD0 = 1