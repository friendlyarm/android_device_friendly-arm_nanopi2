LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := eng
LOCAL_C_INCLUDES += bootable/recovery
LOCAL_SRC_FILES := recovery_ui.cpp

LOCAL_MODULE := librecovery_ui_nanopi2

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES += \
	bootable/recovery \
	hardware/samsung_slsi/slsiap/spi_update
LOCAL_SRC_FILES := \
	../../../../hardware/samsung_slsi/slsiap/spi_update/spieeprom.c \
	../../../../hardware/samsung_slsi/slsiap/spi_update/update.c \
	recovery_updater.c

LOCAL_MODULE := librecovery_updater_nanopi2

include $(BUILD_STATIC_LIBRARY)
