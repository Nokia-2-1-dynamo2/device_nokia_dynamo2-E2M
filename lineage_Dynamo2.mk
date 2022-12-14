# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Dynamo2 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := nokia
PRODUCT_DEVICE := Dynamo2
PRODUCT_MANUFACTURER := nokia
PRODUCT_NAME := lineage_Dynamo2
PRODUCT_MODEL := Nokia 2.1

PRODUCT_GMS_CLIENTID_BASE := android-nokia
TARGET_VENDOR := nokia
TARGET_VENDOR_PRODUCT_NAME := Dynamo2
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="E2M_00WW_FIH-user 10 00WW_4_11C 00WW_4_11C release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Nokia/Dynamo2_00WW/E2M:10/QKQ1.190828.002/00WW_4_11C:user/release-keys