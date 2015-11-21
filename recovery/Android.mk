LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES += bootable/recovery \
LOCAL_SRC_FILES := \
	recovery_updater.c

# should match TARGET_RECOVERY_UPDATER_LIBS set in BoardConfig.mk
LOCAL_MODULE := librecovery_updater_nanopi2

include $(BUILD_STATIC_LIBRARY)
