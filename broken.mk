# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

## Specify phone tech before including full_phone
$(call inherit-product, vendor/broken/config/gsm.mk)

# Inherit some common broken stuff.
$(call inherit-product, vendor/broken/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/broken/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

DEVICE_PACKAGE_OVERLAYS += device/moto/shamu/overlay-broken

## Device identifier. This must come after all inclusions
PRODUCT_NAME := broken_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6

# Enable boot splash
TARGET_CONTINUOUS_SPLASH_ENABLED := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:6.0.1/MMB29V/2554798:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 6.0.1 MMB29V 2554798 release-keys"

# Broken Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="Thomas Raines"
