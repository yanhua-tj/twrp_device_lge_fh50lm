#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from fh50lm device
$(call inherit-product, device/lge/fh50lm/device.mk)

PRODUCT_DEVICE := fh50lm
PRODUCT_NAME := twrp_fh50lm
PRODUCT_BRAND := lge
PRODUCT_MODEL := LM-K735
PRODUCT_MANUFACTURER := lge

PRODUCT_GMS_CLIENTID_BASE := android-lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fh50lm-user 11 RKQ1.201105.002 2100718217d94 release-keys"

BUILD_FINGERPRINT := lge/fh50lm/fh50lm:11/RKQ1.201105.002/2100718217d94:user/release-keys
