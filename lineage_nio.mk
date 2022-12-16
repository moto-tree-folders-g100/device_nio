#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Derpfest stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from nio device
$(call inherit-product, device/motorola/nio/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_nio
PRODUCT_DEVICE := nio
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT2125-4
PRODUCT_MANUFACTURER := motorola

PRODUCT_SYSTEM_NAME := nio_retcn

# DEBBUGGER := true

# common aosp build sup
#TARGET_FACE_UNLOCK_SUPPORTED ?= true

# Build info
BUILD_FINGERPRINT := "motorola/nio_retcn/nio:12/S1RN32.55-16-2/125d6-32b4dd:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="nio_retcn-user 12 S1RN32.55-16-2 125d6-32b4dd release-keys" \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

# Use only userdebug build no user 
ifeq ($(DEBBUGGER),true)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.service.adb.enable=1\
    persist.service.debuggable=1\
    persist.sys.usb.config=mtp,adb \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.usb.config=mtp,adb 

PRODUCT_PRODUCT_PROPERTIES += \
    persist.service.adb.enable=1\
    persist.service.debuggable=1\
    persist.sys.usb.config=mtp,adb \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.usb.config=mtp,adb

endif

RICE_MAINTAINER := Seba3567
RICE_DEVICE := Moto G100
RICE_OFFICIAL := false
RICE_CHIPSET := Snapdragon®870
TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
SUSHI_BOOTANIMATION  := 1080
EXTRA_UDFPS_ANIMATIONS := true
TARGET_ENABLE_BLUR := false
WITH_GMS := true
