#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.

# Define the local path first
LOCAL_PATH := device/hotpepper/Pulla

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
#$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Pulla device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_DEVICE := Pulla
PRODUCT_NAME := omni_Pulla
PRODUCT_BRAND := hotpepper
PRODUCT_MODEL := Pulla
PRODUCT_MANUFACTURER := hotpepper

PRODUCT_GMS_CLIENTID_BASE := android-generic

# Force Platform Version to 12 and strip any potential whitespace
PLATFORM_VERSION := 12
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hotpepper/Pulla/Pulla:12/SP2A.220405.004/test-keys"

PRODUCT_OVERRIDE_FINGERPRINT := hotpepper/Pulla/Pulla:12/SP2A.220405.004/test-keys
