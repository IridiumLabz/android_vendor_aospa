#
 # Copyright (C) 2018-2019 The LineageOS Project
 #
 # SPDX-License-Identifier: Apache-2.0
 #
 
 ifeq (aospa_borneo,$(TARGET_PRODUCT))
 
 # Inherit from those products. Most specific first.
 $(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
 $(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
 
 # Inherit from the AOSPA configuration.
 $(call inherit-product, vendor/aospa/target/product/aospa-target.mk)
 
 # Inherit from channel device
 $(call inherit-product, device/motorola/borneo/device.mk)

# Inherit from ViPER4AndroidFX
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)
 
 PRODUCT_BRAND := motorola
 PRODUCT_DEVICE := borneo
 PRODUCT_MANUFACTURER := motorola
 PRODUCT_NAME := aospa_borneo
 PRODUCT_MODEL := moto g power (2021)
 
 # Boot animation resolution.
 TARGET_BOOT_ANIMATION_RES := 720
 
 endif
