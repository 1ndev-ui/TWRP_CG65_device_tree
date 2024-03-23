#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/vortex/CG65

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

PRODUCT_USE_DYNAMIC_PARTITIONS := true

 # VIRTUAL A/B
ENABLE_VIRTUAL_AB := true

# A/B
AB_OTA_PARTITIONS += \
    product \
    vbmeta_vendor \
    vendor \
    system \
    boot \
    vbmeta_system

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl-recovery \
    android.hardware.boot@1.1-impl \
    android.hardware.boot@1.1-service

PRODUCT_PACKAGES += \
    bootctrl.mt6765 \
    bootctrl.mt6765.recovery \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

#PRODUCT_STATIC_BOOT_CONTROL_HAL := \
#    bootctrl.mt6765 \
#    libgptutils \
#    libz \
#    libcutils

PRODUCT_PACKAGES_DEBUG += \
    bootctrl \
    update_engine_client

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# MTK PlPath Utils
PRODUCT_PACKAGES += \
    mtk_plpath_utils \
    mtk_plpath_utils.recovery
