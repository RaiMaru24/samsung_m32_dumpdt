# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from m32 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := m32
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_m32
PRODUCT_MODEL := SM-M325F

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := m32
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="m32dd-user 13 TP1A.220624.014 M325FXXU5DWC1 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/m32dd/m32:12/SP1A.210812.016/M325FXXU5DWC1:user/release-keys
