#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common Corvus stuff.
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_WIFI_EXT := true
IS_PHONE:= true
DU_BUILD_TYPE := OFFICIAL
#Gapps
USE_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_GOOGLE_RECORDER := true
$(call inherit-product, vendor/du/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := du_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="violet" \
    TARGET_DEVICE="violet"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
