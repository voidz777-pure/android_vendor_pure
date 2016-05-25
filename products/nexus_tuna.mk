# Copyright (C) 2015 The Pure Nexus Project
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

# Include Pure Nexus telephony configuration
include vendor/nexus/configs/nexus_phone.mk

# Inherit AOSP device configuration for hammerhead
$(call inherit-product, device/samsung/tuna/aosp_tuna.mk)

# Override AOSP build properties
PRODUCT_NAME := nexus_tuna
PRODUCT_BRAND := google
PRODUCT_DEVICE := tuna
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=yakju \
    BUILD_FINGERPRINT=google/yakju/tuna:6.0.1/MMB29K/2419427:user/release-keys \
    PRIVATE_BUILD_DESC="tuna-user 6.0.1 MMB29K 2419427 release-keys"
