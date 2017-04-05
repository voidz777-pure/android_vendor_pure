# Copyright (C) 2017 The Pure Nexus Project
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

# Include pure tablet configuration
include vendor/pure/configs/pure_tablet.mk

# Inherit AOSP device configuration for dragon
$(call inherit-product, device/google/dragon/aosp_dragon.mk)

# Inherit arm64 tablet gapps
$(call inherit-product-if-exists, vendor/gapps/arm64-tablet-gapps.mk)

# Override AOSP build properties
PRODUCT_NAME := dragon
PRODUCT_BRAND := google
PRODUCT_DEVICE := dragon
PRODUCT_MODEL := Pixel C
PRODUCT_MANUFACTURER := google

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=ryu \
    BUILD_FINGERPRINT=google/ryu/dragon:7.1.1/N4F26T/3687331:user/release-keys \
    PRIVATE_BUILD_DESC="ryu-user 7.1.1 N4F26T 3687331 release-keys"
