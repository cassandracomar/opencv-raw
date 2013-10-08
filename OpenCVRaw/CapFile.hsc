{-# LANGUAGE ForeignFunctionInterface #-}
#include <bindings.dsl.h>
#include <capture_from_file.hpp>
module OpenCVRaw.CapFile where
#strict_import
import Foreign.C
import Foreign.Ptr
import Foreign.C.Types
import OpenCVRaw.Types

#ccall cv_create_VideoCapture_file , Ptr CChar -> IO (Ptr <VideoCapture>)