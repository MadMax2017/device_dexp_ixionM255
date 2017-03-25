#!/bin/bash
cd ../../../..
cd system/core
#git apply -v ../../device/dexp/ixionM255/patches/0001-Remove-CAP_SYS_NICE-from-surfaceflinger.patch
#git apply -v ../../device/dexp/ixionM255/patches/0004-libnetutils-add-MTK-bits-ifc_ccmni_md_cfg.patch
cd ../..
cd system/sepolicy
#git apply -v ../../device/dexp/ixionM255/patches/0003-Revert-back-to-policy-version-29.patch
cd ../..
cd packages/apps/Settings
#git apply -v ../../../device/dexp/ixionM255/patches/0005-add-author-info-in-device-info.patch
cd ../../..
cd frameworks/av
#git apply -v ../../device/dexp/ixionM255/patches/0007-Disable-usage-of-get_capture_position.patch
cd ../..
cd system/netd
#git apply -v ../../device/dexp/ixionM255/patches/0010-wifi-tethering-fix.patch
cd ../..
cd vendor/cm/ 
#git apply -v ../../device/dexp/ixionM255/patches_decker/0015-disable-ResurrectionStats-building.patch
cd ../..
