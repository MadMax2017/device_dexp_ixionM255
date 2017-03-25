## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := Ixion M255

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/dexp/ixionM255/device_ixionM255.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ixionM255
PRODUCT_NAME := lineage_ixionM255
PRODUCT_BRAND := Ixion
PRODUCT_MODEL := M255
PRODUCT_MANUFACTURER := DEXP

PRODUCT_DEFAULT_LANGUAGE := ru
PRODUCT_DEFAULT_REGION   := RU
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.timezone=Asia/Yekaterinburg
