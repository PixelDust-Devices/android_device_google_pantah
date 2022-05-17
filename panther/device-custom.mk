#
# Copyright (C) 2023-2025 Another KitchenSink Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(DEVICE_PATH)/device-custom.mk)

DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/$(DEVICE_CODENAME)/overlay-custom

# HBM
PRODUCT_PACKAGES += \
    HbmSVManagerOverlayPanther
