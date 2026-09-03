#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Not set in time to check, so set before everything else
PRODUCT_IS_ATV := true

# Inherit some common AOSP stuff
$(call inherit-product, device/google/atv/products/atv_base.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tv.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := VNPTTechnology
PRODUCT_DEVICE := yuna
PRODUCT_GMS_CLIENTID_BASE := android-sdmc-tv
PRODUCT_MANUFACTURER := SDMC
PRODUCT_MODEL := VNPT SmartBox 3
PRODUCT_NAME := lineage_yuna

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="oppen-user 14 UKG3.250518.001 20251021 release-keys" \
    BuildFingerprint=VNPTTechnology/vnptt_smb_3/vnptt_smb_3:14/UKG/20251024:user/release-keys \
    SystemName=vnptt_smb_3
