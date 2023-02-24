#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from grus device
$(call inherit-product, device/xiaomi/grus/device.mk)

PRODUCT_DEVICE := grus
PRODUCT_NAME := omni_grus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 9 SE
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="grus-user 11 RKQ1.200826.002 V12.5.4.0.RFBCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/grus/grus:11/RKQ1.200826.002/V12.5.4.0.RFBCNXM:user/release-keys
