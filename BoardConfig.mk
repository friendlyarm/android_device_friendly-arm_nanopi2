TARGET_BOARD_INFO_FILE := device/friendly-arm/nanopi2/board-info.txt


TARGET_BOARD_PLATFORM 		 := slsiap
TARGET_BOOTLOADER_BOARD_NAME := nanopi2

TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP  := true
TARGET_ARCH 	:= arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
ARCH_ARM_HAVE_TLS_REGISTER  := true

# chip variation
TARGET_CPU_VARIANT2 := s5p4418

TARGET_NO_BOOTLOADER := false
TARGET_NO_KERNEL 	 := true
TARGET_BOOTLOADER_IS_2ND := false
TARGET_NO_RADIOIMAGE := false

# recovery
TARGET_RECOVERY_FSTAB := device/friendly-arm/nanopi2/recovery.fstab
TARGET_RELEASETOOLS_EXTENSIONS := device/friendly-arm/nanopi2
TARGET_RECOVERY_UPDATER_LIBS += librecovery_updater_nanopi2
TARGET_RECOVERY_UI_LIB := librecovery_ui_nanopi2
# TARGET_RECOVERY_PIXEL_FORMAT not specified ==> rgb565

# 2ndbootloader, bootloader
#$(call add-radio-file,2ndbootloader)
#$(call add-radio-file,bootloader)
#INSTALLED_RADIOIMAGE_TARGET += 2ndbootloader
#INSTALLED_RADIOIMAGE_TARGET += bootloader
#$(warning INSTALLED_RADIOIMAGE_TARGET: $(INSTALLED_RADIOIMAGE_TARGET))

# certificate
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/friendly-arm/nanopi2/security/releasekey

# opengl
BOARD_EGL_CFG := device/friendly-arm/nanopi2/egl.cfg

USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO 	 := false

BOARD_HAVE_BLUETOOTH := false

# camera
BOARD_HAS_CAMERA := false

# v4l2
BOARD_USES_HDMI  := true
BOARD_USES_RESOL := true

# sensor
BOARD_HAS_SENSOR := false
BOARD_SENSOR_TYPE := general

# external ffmpeg plugin
EN_FFMPEG_EXTRACTOR := false
EN_FFMPEG_AUDIO_DEC := false

# wifi
BOARD_WIFI_VENDOR := broadcom

# Wi-Fi related defines
ifeq ($(BOARD_WIFI_VENDOR),broadcom)
BOARD_WPA_SUPPLICANT_DRIVER	:= NL80211
WPA_SUPPLICANT_VERSION		:= VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER		:= NL80211
BOARD_HOSTAPD_PRIVATE_LIB	:= lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE		:= bcmdhd
WIFI_DRIVER_FW_PATH_PARAM	:= "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA		:= "/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P		:= "/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP		:= "/vendor/firmware/fw_bcmdhd_apsta.bin"
endif

# RIL
BOARD_HAS_RIL := false

# HWC
SLSIAP_HWC_VERSION := 2

# sepolicy
BOARD_SEPOLICY_DIRS := \
	device/friendly-arm/nanopi2/sepolicy

BOARD_SEPOLICY_UNION := \
	file_contexts \
	genfs_contexts \
	adbd.te \
	app.te \
	device.te \
	domain.te \
	file.te \
	mediaserver.te \
	surfaceflinger.te \
	system.te

# for google gms
#-include vendor/google/gapps/BoardConfigPartial.mk

# packaging for emmc, sd
TARGET_USERIMAGES_USE_EXT4       := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 790626304
BOARD_CACHEIMAGE_PARTITION_SIZE  := 448790528
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2466914048
BOARD_FLASH_BLOCK_SIZE           := 4096

