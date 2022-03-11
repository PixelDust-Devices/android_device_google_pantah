#
# Copyright (C) 2023-2025 Another KitchenSink Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PACKAGE_OVERLAYS += device/google/pantah/overlay-custom

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml \
    $(DEVICE_PATH)/permissions/permissions_com.google.android.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/permissions_com.google.android.euicc.xml

PRODUCT_PACKAGES += \
    EuiccSupportPixelOverlay

# HBM
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/permissions/permissions_com.android.hbmsvmanager.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/permissions_com.android.hbmsvmanager.xml

# Pixel Camera Services / Camera extensions
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/permissions/permissions_com.google.android.apps.camera.services.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/permissions_com.google.android.apps.camera.services.xml

# wireless_charger HAL service
include device/google/gs-common/wireless_charger/wireless_charger.mk
