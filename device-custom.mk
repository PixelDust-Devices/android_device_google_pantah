#
# Copyright (C) 2023 The PixelDust Project
#
# SPDX-License-Identifier: Apache-2.0
#

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml \
    device/google/pantah/permissions/permissions_com.google.android.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/permissions_com.google.android.euicc.xml

PRODUCT_PACKAGES += \
    EuiccSupportPixelOverlay

# wireless_charger HAL service
include device/google/gs-common/wireless_charger/wireless_charger.mk

# HBM
PRODUCT_COPY_FILES += \
    device/google/pantah/permissions/permissions_com.android.hbmsvmanager.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/permissions_com.android.hbmsvmanager.xml
