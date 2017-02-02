# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

## Specify phone tech before including full_phone Depricated?
## $(call inherit-product, vendor/broken/config/gsm.mk)

# Inherit some common broken stuff.
$(call inherit-product, vendor/broken/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/broken/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/shamu/aosp_shamu.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/shamu/overlay-broken

## Device identifier. This must come after all inclusions
PRODUCT_NAME := broken_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:7.1.1/N6F26Q/3549652:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 7.1.1 N6F26Q 3549652 release-keys"

# Broken Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="Thomas Raines"
