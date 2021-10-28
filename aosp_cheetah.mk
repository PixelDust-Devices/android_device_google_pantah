#
# Copyright 2021 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_LINUX_KERNEL_VERSION := 5.10

USE_SWIFTSHADER := true
BOARD_USES_SWIFTSHADER := true

$(call inherit-product, device/google/gs201/aosp_common.mk)
$(call inherit-product, device/google/pantah/device-custom.mk)
$(call inherit-product, device/google/pantah/device-vendor.mk)
$(call inherit-product, device/google/pantah/device-cheetah.mk)

PRODUCT_NAME := aosp_cheetah
PRODUCT_DEVICE := cheetah
PRODUCT_MODEL := AOSP on Cheetah
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := Google

DEVICE_MANIFEST_FILE := \
	device/google/pantah/manifest.xml

PRODUCT_PACKAGES += com.android.vndk.current.on_vendor

$(call inherit-product, vendor/google/cheetah/cheetah-vendor.mk)
