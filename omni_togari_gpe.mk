#
# Copyright (C) 2014 The OmniROM Project
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

TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit some common Omni stuff
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Common Sony Resources
$(call inherit-product, device/sony/common/resources.mk)

# Inherit more device specific configurations
$(call inherit-product, device/sony/togari_gpe/togari_gpe.mk)

# Discard inherited values and use our own instead.
PRODUCT_MODEL := C6806_GPe
PRODUCT_BRAND := Sony
PRODUCT_NAME := omni_togari_gpe
PRODUCT_DEVICE := togari_gpe
PRODUCT_MANUFACTURER := Sony

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=C6806_GPe \
    PRIVATE_BUILD_DESC="C6806-user 4.4.4 KTU84P.S1 3061 test-keys" \
    BUILD_FINGERPRINT="Sony/C6806_GPe/C6806:4.4.4/KTU84P.S1/3061:user/release-keys"
