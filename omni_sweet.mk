#
# Copyright 2018 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := sweet
DEVICE_PATH := device/xiaomi/sweet

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/twrp/soong/makevars.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/sweet/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sweet
PRODUCT_NAME := omni_sweet
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2101K6G
PRODUCT_MANUFACTURER := Xiaomi
