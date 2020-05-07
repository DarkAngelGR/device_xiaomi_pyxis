#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Derp stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
BUILD_GAPPS := true
ifeq (($(BUILD_GAPPS), true)
IS_PHONE := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_WIFI_EXT := true
endif

# Inherit from pyxis device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := pyxis
PRODUCT_NAME := derp_pyxis
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="pyxis" \
    TARGET_DEVICE="pyxis"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
