# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit Project lighthouse product configuration
$(call inherit-product, vendor/lighthouse/config/common.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

#Lighthouse Stuff
LIGHTHOUSE_BUILD_TYPE=OFFICIAL

PRODUCT_NAME := lighthouse_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SD1A.210817.036 7805805 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SD1A.210817.036/7805805:user/release-keys
