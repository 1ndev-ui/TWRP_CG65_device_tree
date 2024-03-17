#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from CG65 device
$(call inherit-product, device/vortex/CG65/device.mk)

PRODUCT_DEVICE := CG65
PRODUCT_NAME := twrp_CG65
PRODUCT_BRAND := Vortex
PRODUCT_MODEL := CG65
PRODUCT_MANUFACTURER := vortex

PRODUCT_GMS_CLIENTID_BASE := android-vortex

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_k65v1_64_bsp-user 12 SP1A.210812.016 20231108 release-keys"

BUILD_FINGERPRINT := Vortex/CG65/CG65:13/TP1A.220624.014/20231108:user/release-keys
