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

# Include Pure Nexus tv configuration
include vendor/nexus/configs/nexus_tv.mk

# Inherit AOSP device configuration
$(call inherit-product, device/asus/fugu/aosp_fugu.mk)

# Override AOSP build properties
PRODUCT_NAME := nexus_fugu
PRODUCT_BRAND := google
PRODUCT_DEVICE := fugu
PRODUCT_MODEL := Nexus Player
PRODUCT_MANUFACTURER := Asus

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=fugu \
    BUILD_FINGERPRINT=google/fugu/fugu:6.0.1/MMB29V/2554798:user/release-keys \
    PRIVATE_BUILD_DESC="fugu-user 6.0.1 MMB29V 2554798 release-keys"
