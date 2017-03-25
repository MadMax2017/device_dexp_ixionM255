$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Off ninja
USE_NINJA=false

# These additionals go to /default.prop
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=1 \
ro.debuggable=1 \
ro.adb.secure=0 \
persist.service.acm.enable=0 \
persist.sys.usb.config=mtp \
ro.mount.fs=EXT4 \
debug.hwui.render_dirty_regions=false \
ro.sf.lcd_density=320 \
persist.radio.multisim.config=dsds \
ro.mtk_lte_support=1 \
ro.telephony.ril_class=MT6735 \
ro.telephony.ril.config=fakeiccid \
ro.telephony.sim.count=2 \
persist.gemini.sim_num=2 \
ril.current.share_modem=2 \
ro.mtk_gps_support=1 \
ro.mtk_agps_app=1 \
persist.debug.xlog.enable=1 \

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/dexp/ixionM255/ixionM255-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/dexp/ixionM255/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := device/dexp/ixionM255/prebuilt/Image.gz-dtb
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_PACKAGES += \
   Torch \
   libmtk_symbols \
   libperfservicenative \
   libxlog \
   libcurl

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := prostopfon
PRODUCT_DEVICE := prostopfon
PRODUCT_LOCALES := en_US en_GB ru_RU

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

#$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
# must enable for 2 Gb RAM - phone-xhdpi-2048-dalvik-heap.mk
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)




# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi


TARGET_OTA_ASSERT_DEVICE := prostopfon

TARGET_PROVIDES_INIT_RC := true

PRODUCT_COPY_FILES += \
    device/ixion/prostopfon/rootdir/init.rc:root/init.rc \
    device/ixion/prostopfon/rootdir/init.target.rc:root/init.target.rc \
    device/ixion/prostopfon/rootdir/init.mt6735.rc:root/init.mt6735.rc \
    device/ixion/prostopfon/rootdir/init.ssd.rc:root/init.ssd.rc \
    device/ixion/prostopfon/rootdir/init.xlog.rc:root/init.xlog.rc \
    device/ixion/prostopfon/rootdir/init.usb.rc:root/init.usb.rc \
    device/ixion/prostopfon/rootdir/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
    device/ixion/prostopfon/rootdir/init.aee.rc:root/init.aee.rc \
    device/ixion/prostopfon/rootdir/init.project.rc:root/init.project.rc \
    device/ixion/prostopfon/rootdir/init.modem.rc:root/init.modem.rc \
    device/ixion/prostopfon/rootdir/init.trace.rc:root/init.trace.rc \
    device/ixion/prostopfon/rootdir/fstab.mt6735:root/fstab.mt6735 \
    device/ixion/prostopfon/rootdir/fstab.swap:root/fstab.swap \
    device/ixion/prostopfon/rootdir/ueventd.mt6735.rc:root/ueventd.mt6735.rc \
    device/ixion/prostopfon/rootdir/ueventd.rc:root/ueventd.rc \
    device/ixion/prostopfon/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/ixion/prostopfon/etc/init/audioserver.rc:system/etc/init/audioserver.rc \
    device/ixion/prostopfon/etc/init/mediacodec.rc:system/etc/init/mediacodec.rc \
    device/ixion/prostopfon/etc/init/cameraserver.rc:system/etc/init/cameraserver.rc \
    device/ixion/prostopfon/etc/init/rild.rc:system/etc/init/rild.rc \
    device/ixion/prostopfon/media_profiles.xml:system/etc/media_profiles.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
    frameworks/native/data/etc/android.hardware.audio.output.xml:system/etc/permissions/android.hardware.audio.output.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \

# Audio componets from source
PRODUCT_PACKAGES += \
    audio.usb.default \
    audio.r_submix.default

# RIL
PRODUCT_PACKAGES += \
    gsm0710muxd

# Gello
PRODUCT_PACKAGES += \
    Gello

PRODUCT_PACKAGES += power.mt6735

# Camera
PRODUCT_PACKAGES += \
  Snap \
  Camera2

# Lights
PRODUCT_PACKAGES += \
    lights.mt6735

PRODUCT_PACKAGES += \
    gps-test-plus \
    logcatextreme \
    #rootexplorer \
    kerneadiutor \
    solidexplorer \
    xperiakeyboard \
    substratum

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true

# Wifi
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/ixion/prostopfon/rootdir/etc/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf

# Audio componets from source
#PRODUCT_PACKAGES += \
    #MtkCamera libDocVfbEngineLib_m81 libpanorama

#PRODUCT_PACKAGES += stlport_shared

PRODUCT_COPY_FILES += \
    prebuilts/ndk/current/sources/cxx-stl/stlport/libs/armeabi-v7a/libstlport_shared.so:system/lib/libstlport.so


# These additionals go to /system/build.prop
# ADDITIONAL_BUILD_PROPERTIES += \
# cm.updater.type=plain \
# cm.updater.uri=https://raw.githubusercontent.com/divis1969/update-site/master/updates-14.1.json \


