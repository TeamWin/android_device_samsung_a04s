# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

# Inherit some common pbrp stuff.
$(call inherit-product-if-exists, vendor/pb/config/common.mk)

# Inherit from a04s device
$(call inherit-product, device/samsung/a04s/device.mk)

PRODUCT_DEVICE := a04s
PRODUCT_NAME := twrp_a04s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A047F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a04snsxx-user 14 UP1A.231005.007 A047FXXSBEYF1 release-keys"

BUILD_FINGERPRINT := samsung/a04snsxx/a04s:14/UP1A.231005.007/A047FXXSBEYF1:user/release-keys
