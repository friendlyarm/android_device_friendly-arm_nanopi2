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
	$(LOCAL_PATH)/it7260_ts.idc:system/usr/idc/it7260_ts.idc \
	$(LOCAL_PATH)/fa_ts_input.idc:system/usr/idc/fa_ts_input.idc

# mixer paths
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/tiny_hw.nanopi2.xml:system/etc/tiny_hw.nanopi2.xml

# audio policy configuration
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf

# media, camera
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/media_profiles.xml:system/etc/media_profiles.xml

# sensor
PRODUCT_PACKAGES += \
	sensors.nanopi2

# hwc executable
PRODUCT_PACKAGES += \
	report_hwc_scenario

# ffmpeg libraries
-include $(LOCAL_PATH)/BoardConfigFFmpeg.mk

# lte
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/huawei-lte/system/bin/armcomtest:system/bin/armcomtest \
	$(LOCAL_PATH)/huawei-lte/system/bin/testpppd.sh:system/bin/testpppd.sh \
	$(LOCAL_PATH)/huawei-lte/system/lib/libhuawei-ril.so:system/lib/libhuawei-ril.so \
	$(LOCAL_PATH)/huawei-lte/system/lib/libhuawei-and4-ril.so:system/lib/libhuawei-and4-ril.so \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/init.gprs-pppd:system/etc/ppp/init.gprs-pppd \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/test3g.sh:system/etc/ppp/test3g.sh \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/ip-up:system/etc/ppp/ip-up \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/peers/chat-testmodem:system/etc/ppp/peers/chat-testmodem \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/peers/wcdma:system/etc/ppp/peers/wcdma \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/peers/tdscdma-usb1:system/etc/ppp/peers/tdscdma-usb1 \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/peers/tdscdma-usb2:system/etc/ppp/peers/tdscdma-usb2 \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/peers/tdscdma-usb3:system/etc/ppp/peers/tdscdma-usb3 \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/peers/chat-wcdma-connect:system/etc/ppp/peers/chat-wcdma-connect \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/peers/chat-cdma2000-connect:system/etc/ppp/peers/chat-cdma2000-connect \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/peers/chat-cdma2000-disconnect:system/etc/ppp/peers/chat-cdma2000-disconnect \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/peers/chat-tdscdma-connect:system/etc/ppp/peers/chat-tdscdma-connect \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/peers/wcdma-usb1:system/etc/ppp/peers/wcdma-usb1 \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/peers/cdma2000:system/etc/ppp/peers/cdma2000 \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/peers/cdma2000-for-ac8710:system/etc/ppp/peers/cdma2000-for-ac8710 \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/peers/tdscdma:system/etc/ppp/peers/tdscdma \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/peers/chat-wcdma-disconnect:system/etc/ppp/peers/chat-wcdma-disconnect \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/peers/wcdma-usb3:system/etc/ppp/peers/wcdma-usb3 \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/peers/chat-cdma2000-connect-for-ac8710:system/etc/ppp/peers/chat-cdma2000-connect-for-ac8710 \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/peers/tdscdma-usb6:system/etc/ppp/peers/tdscdma-usb6 \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/peers/chat-tdscdma-disconnect:system/etc/ppp/peers/chat-tdscdma-disconnect \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/peers/wcdma-usb2:system/etc/ppp/peers/wcdma-usb2 \
	$(LOCAL_PATH)/huawei-lte/system/etc/ppp/ip-down:system/etc/ppp/ip-down \
	$(LOCAL_PATH)/spn-conf.xml:system/etc/spn-conf.xml

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml

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

# Product Property
PRODUCT_PROPERTY_OVERRIDES := \
	wifi.interface=wlan0

# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072

# Ril sends only one RIL_UNSOL_CALL_RING, so set call_ring.multiple to false
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.call_ring.multiple=0

# Do not power down SIM card when modem is sent to Low Power Mode.
PRODUCT_PROPERTY_OVERRIDES += \
	persist.radio.apm_sim_not_pwdn=1

# LTE, CDMA, GSM/WCDMA
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.default_network=10 \
	telephony.lteOnCdmaDevice=0 \
	persist.radio.mode_pref_nv10=1

# update 1x signal strength after 2s
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.radio.snapshot_enabled=1 \
	persist.radio.snapshot_timer=2

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.radio.use_cc_names=true

# If data_no_toggle is 1 then active and dormancy enable at all times.
# If data_no_toggle is 0 there are no reports if the screen is off.
PRODUCT_PROPERTY_OVERRIDES += \
	persist.radio.data_no_toggle=1

# Enable AAC 5.1 output
#PRODUCT_PROPERTY_OVERRIDES += \
	media.aac_51_output_enabled=true

# Set device insecure for all builds
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0

# set default USB configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp

# ota updater test
#PRODUCT_PACKAGES += \
	OTAUpdateCenter

# miracast sink
PRODUCT_PACKAGES += \
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
$(call inherit-product-if-exists, vendor/friendly-arm/apps/device-partial.mk)
$(call inherit-product-if-exists, vendor/broadcom/nanopi2/device-partial.mk)

# google gms
$(call inherit-product-if-exists, vendor/google/gapps/device-partial.mk)

# Nexell Application
$(call inherit-product-if-exists, vendor/nexell/apps/nxapps.mk)
