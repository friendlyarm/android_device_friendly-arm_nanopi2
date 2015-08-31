PRODUCT_PACKAGES += \
		LiveWallpapers \
		LiveWallpapersPicker \
		MagicSmokeWallpapers \
		VisualizationWallpapers \
		librs_jni

PRODUCT_PROPERTY_OVERRIDES := \
	net.dns1=8.8.8.8 \
	net.dns2=8.8.4.4

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, device/nexell/drone2_s5p4418/device.mk)

PRODUCT_NAME := full_drone2_s5p4418
PRODUCT_DEVICE := drone2_s5p4418
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on drone2_s5p4418
PRODUCT_MANUFACTURER := Nexell
#PRODUCT_RESTRICT_VENDOR_FILES := owner path
