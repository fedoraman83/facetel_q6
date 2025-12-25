#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
LOCAL_PATH := device/hotpepper/Pulla

ifeq ($(TARGET_DEVICE),Pulla)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
