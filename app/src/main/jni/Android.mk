LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)


OpenCV_INSTALL_MODULES := on
OpenCV_CAMERA_MODULES := off

OPENCV_LIB_TYPE :=STATIC

ifeq ("$(wildcard $(OPENCV_MK_PATH))","")
include ../../../../native/jni/OpenCV.mk
else
include $(OPENCV_MK_PATH)
endif

LOCAL_MODULE := OpenCV

LOCAL_LDLIBS +=  -lm -llog

LOCAL_LDLIBS += -latomic

LOCAL_SRC_FILES := com_example_xiaojiakai_opencvtest_OpenCVHelper.cpp


include $(BUILD_SHARED_LIBRARY)
