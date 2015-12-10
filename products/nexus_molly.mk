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
$(call inherit-product, device/google/molly/full_molly.mk)

# Override AOSP build properties
PRODUCT_NAME := nexus_molly
PRODUCT_BRAND := google
PRODUCT_DEVICE := molly
PRODUCT_MODEL := ADT-1
PRODUCT_MANUFACTURER := Google

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=molly \
    BUILD_FINGERPRINT=google/molly/molly:5.0.2/LRX22G/1649326:user/release-keys \
    PRIVATE_BUILD_DESC="molly-user 5.0.2 LRX22G 1649326 release-keys"

PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/bootanimation/molly.zip:system/media/bootanimation.zip
