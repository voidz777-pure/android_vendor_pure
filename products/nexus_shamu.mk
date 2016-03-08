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

# Inherit AOSP device configuration for shamu.
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Override AOSP build properties
PRODUCT_NAME := nexus_shamu
PRODUCT_BRAND := google
PRODUCT_DEVICE := shamu
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:6.0.1/MMB29V/2554798:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 6.0.1 MMB29V 2554798 release-keys"
