## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := PrimeL

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/ixion/prostopfon/device_prostopfon.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := prostopfon
PRODUCT_NAME := lineage_prostopfon
PRODUCT_BRAND := Ixion
PRODUCT_MODEL := Prostopfon
PRODUCT_MANUFACTURER := DEXP

PRODUCT_DEFAULT_LANGUAGE := ru
PRODUCT_DEFAULT_REGION   := RU
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.timezone=Asia/Yekaterinburg
