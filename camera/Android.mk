ifeq ($(BOARD_HAS_CAMERA),true)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_C_INCLUDES += \
	frameworks/native/include \
	system/media/camera/include \
	hardware/samsung_slsi/slsiap/include \
	hardware/samsung_slsi/slsiap/libcamerasensor

LOCAL_SHARED_LIBRARIES := liblog libv4l2-nexell
LOCAL_STATIC_LIBRARIES := libcamerasensor
LOCAL_SRC_FILES := board-camera.cpp

ifeq ($(BOARD_CAMERA_BACK),true)
LOCAL_CFLAGS += -DUSES_CAMERA_BACK=1
endif
ifeq ($(BOARD_CAMERA_FRONT),true)
LOCAL_CFLAGS += -DUSES_CAMERA_FRONT=1
endif

LOCAL_MODULE := libcamera-nanopi2
LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)

endif
