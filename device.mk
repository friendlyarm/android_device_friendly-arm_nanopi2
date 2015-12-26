#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/friendly-arm/nanopi2

# kernel
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/boot/uImage:boot/uImage

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/boot/battery.bmp:boot/battery.bmp \
	$(LOCAL_PATH)/boot/logo.bmp:boot/logo.bmp \
	$(LOCAL_PATH)/boot/update.bmp:boot/update.bmp

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/partmap_sdfs.txt:partmap.txt

# Init files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.rc:root/init.rc \
	$(LOCAL_PATH)/init.nanopi2.rc:root/init.nanopi2.rc \
	$(LOCAL_PATH)/init.nanopi2.usb.rc:root/init.nanopi2.usb.rc \
	$(LOCAL_PATH)/init.recovery.nanopi2.rc:root/init.recovery.nanopi2.rc \
	$(LOCAL_PATH)/fstab.nanopi2:root/fstab.nanopi2 \
	$(LOCAL_PATH)/fstab.nanopi2.emmc:root/fstab.nanopi2.emmc \
	$(LOCAL_PATH)/ueventd.nanopi2.rc:root/ueventd.nanopi2.rc \
	$(LOCAL_PATH)/bootanimation.zip:system/media/bootanimation.zip

# key
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keypad_nanopi2.kl:system/usr/keylayout/Nexell_Keypad.kl \
	$(LOCAL_PATH)/keypad_nanopi2.kcm:system/usr/keychars/Nexell_Keypad.kcm

# Input device calibration files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/gslX680.idc:system/usr/idc/gslX680.idc \
	$(LOCAL_PATH)/ft5x0x_ts.idc:system/usr/idc/ft5x0x_ts.idc \
	$(LOCAL_PATH)/fa_ts_input.idc:system/usr/idc/fa_ts_input.idc

# mixer paths
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/tiny_hw.nanopi2.xml:system/etc/tiny_hw.nanopi2.xml

# audio policy configuration
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf

# media, camera
PRODUCT_COPY_FILES += \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
	$(LOCAL_PATH)/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/media_profiles.xml:system/etc/media_profiles.xml

# sensor
PRODUCT_PACKAGES += \
	sensors.nanopi2

# hwc executable
PRODUCT_PACKAGES += \
	report_hwc_scenario

# ffmpeg libraries
EN_FFMPEG_EXTRACTOR := false
EN_FFMPEG_AUDIO_DEC := false

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
	frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml

# Bluetooth
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

# Screen size is "normal", density is "hdpi"
PRODUCT_AAPT_CONFIG := normal large xlarge hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_CHARACTERISTICS := tablet,usbstorage

DEVICE_PACKAGE_OVERLAYS := \
	$(LOCAL_PATH)/overlay

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
	librs_jni \
	com.android.future.usb.accessory

PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default

# Filesystem management tools
PRODUCT_PACKAGES += \
	setup_fs \
	e2fsck

# Connectivity
PRODUCT_PACKAGES := \
	libwpa_client \
	hostapd \
	dhcpcd.conf \
	wpa_supplicant \
	wpa_supplicant.conf

# Product Property
PRODUCT_PROPERTY_OVERRIDES := \
	wifi.interface=wlan0

# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072

# Enable AAC 5.1 output
#PRODUCT_PROPERTY_OVERRIDES += \
	media.aac_51_output_enabled=true

# Set device insecure for all builds
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0

# set default USB configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp

PRODUCT_PACKAGES += \
	VolantisLayoutlepus

# ota updater test
#PRODUCT_PACKAGES += \
	OTAUpdateCenter

# miracast sink
#PRODUCT_PACKAGES += \
	Mira4U

# slsiap
$(call inherit-product-if-exists, hardware/samsung_slsi/slsiap/slsiap.mk)

# wifi
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)

# See comment at the top of this file. This is where the other
# half of the device-specific product definition file takes care
# of the aspects that require proprietary drivers that aren't
# commonly available
$(call inherit-product-if-exists, vendor/nexell/s5p4418/slsiap.mk)
$(call inherit-product-if-exists, vendor/friendly-arm/nanopi2/device-nanopi2.mk)
$(call inherit-product-if-exists, vendor/broadcom/nanopi2/device-partial.mk)

# google gms
$(call inherit-product-if-exists, vendor/google/gapps/device-partial.mk)

# Nexell Application
$(call inherit-product-if-exists, vendor/nexell/apps/nxapps.mk)
$(call inherit-product-if-exists, vendor/nexell/apps/smartsync.mk)

