#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

## Bluetooth
BOARD_HAVE_BLUETOOTH_RTK_TV := true
include hardware/realtek/rtkbt/rtkbt.mk

PRODUCT_PACKAGES += \
    BluetoothOverlayYuna

## Init
PRODUCT_PACKAGES += \
    init.amlogic.wifi_buildin.rc

## Keylayout (IR)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/Vendor_000d_Product_3838.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Vendor_000d_Product_3838.kl \
    $(LOCAL_PATH)/keylayout/Vendor_0001_Product_0001.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Vendor_0001_Product_0001.kl

## Netflix
PRODUCT_PACKAGES += \
    NetflixConfig \
    NetflixConfigOverlayYuna

## Platform
TARGET_AMLOGIC_SOC := s4

## Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/realtek/wlan

## Wi-Fi
PRODUCT_CFI_INCLUDE_PATHS += hardware/realtek/wlan/wpa_supplicant_8_lib

$(call soong_config_set,wpa_supplicant_8,board_wlan_device,realtek)

## Inherit from the common tree product makefile
$(call inherit-product, device/amlogic/ne-common/ne.mk)

## Inherit from the proprietary files makefile
$(call inherit-product, vendor/sdmc/yuna/yuna-vendor.mk)
