#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),CG65)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif

ifneq ($(TW_OVERRIDE_SYSTEM_PROPS),)
    TW_INCLUDE_LIBRESETPROP := true
    LOCAL_CFLAGS += -DTW_OVERRIDE_SYSTEM_PROPS=$(TW_OVERRIDE_SYSTEM_PROPS)
endif

ifneq ($(TW_INCLUDE_LIBRESETPROP),)
    LOCAL_SHARED_LIBRARIES += libresetprop
    LOCAL_C_INCLUDES += external/magisk-prebuilt/include
    LOCAL_CFLAGS += -DTW_INCLUDE_LIBRESETPROP
endif

ifeq ($(TW_INCLUDE_FASTBOOTD), true)
    LOCAL_CFLAGS += -DTW_INCLUDE_FASTBOOTD
endif

ifeq ($(TW_INCLUDE_RESETPROP), true)
TWRP_REQUIRED_MODULES += \
    resetprop
endif

ifeq ($(TW_INCLUDE_LIBRESETPROP), true)
TWRP_REQUIRED_MODULES += \
    libresetprop
endif
