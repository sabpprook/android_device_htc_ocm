# Time Zone data for Recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

$(call inherit-product, device/htc/ocm/aosp_ocm.mk)

#PRODUCT_NAME := twrp_ocm
#PRODUCT_DEVICE := ocm
#PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC U11 plus
PRODUCT_MANUFACTURER := HTC
