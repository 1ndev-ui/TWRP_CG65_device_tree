#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/vortex/CG65
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
    bootctrl.mt6765 \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

#PRODUCT_STATIC_BOOT_CONTROL_HAL := \
#    bootctrl.mt6765 \
#    libgptutils \
#    libz \
#    libcutils

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

PRODUCT_USE_DYNAMIC_PARTITIONS := true
TARGET_OTA_ASSERT_DEVICE := CG65

TW_DEVICE_VERSION := 1ndev-0.1

TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# TWRP specific build flags
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_RESETPROP := true
TARGET_USES_MKE2FS := true
TW_NO_SCREEN_BLANK := true
TW_MAX_BRIGHTNESS := 1023
TW_NO_LEGACY_PROPS := true
TW_USE_NEW_MINADBD := true
TW_NO_BIND_SYSTEM := true
TW_EXCLUDE_APEX := true
TW_FRAMERATE := 60

TW_Y_OFFSET := 70
TW_H_OFFSET := -70

TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true​


#Properties
TW_OVERRIDE_SYSTEM_PROPS := \
    "ro.build.fingerprint=ro.system.build.fingerprint;ro.build.version.incremental"
