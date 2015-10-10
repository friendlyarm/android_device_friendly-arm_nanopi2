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
$(call inherit-product, device/friendly-arm/nanopi2/device.mk)

PRODUCT_NAME := full_nanopi2
PRODUCT_DEVICE := nanopi2
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on NanoPi 2
PRODUCT_MANUFACTURER := FriendlyARM
#PRODUCT_RESTRICT_VENDOR_FILES := owner path
