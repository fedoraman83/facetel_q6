#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Pulla device
$(call inherit-product, device/hotpepper/Pulla/device.mk)

PRODUCT_DEVICE := Pulla
PRODUCT_NAME := omni_Pulla
PRODUCT_BRAND := hotpepper
PRODUCT_MODEL := Pulla
PRODUCT_MANUFACTURER := hotpepper

PRODUCT_GMS_CLIENTID_BASE := android-generic

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_g863dmr_v2_szy_q6_us_t-user 12 TP1A.220624.014 2023235 release-keys"

BUILD_FINGERPRINT := 

