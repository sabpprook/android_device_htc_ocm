# Asia / EMEA (Dual SIM for HTC direct sales)
# Device ID: htc_ocmdugl
# MID: 2Q4D10000
# CID: HTC__621, HTC__060, HTC__622, HTC__059
#
# China (Dual SIM)
# Device ID: htc_ocmdtwl
# MID: 2Q4D20000
# CID: HTCCN701
#

# Vendor Init
BOARD_VENDOR := htc
TARGET_INIT_VENDOR_LIB := libinit_$(TARGET_DEVICE)
TARGET_UNIFIED_DEVICE := true

# Set recovery type
RECOVERY_VARIANT := twrp

# TWRP Build Flags
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_USE_SYSTEM_VOLD := qseecomd hwservicemanager keymaster3
#TW_INCLUDE_NTFS_3G := true
TW_NO_EXFAT_FUSE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_DEVICE_MODULES := chargeled
TW_INPUT_BLACKLIST := "hbtp_vm"

# TWRP Debug Flags
TWRP_EVENT_LOGGING := true
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true
TARGET_RECOVERY_DEVICE_MODULES += strace debuggerd
TW_RECOVERY_ADDITIONAL_RELINK_FILES += $(TARGET_OUT_OPTIONAL_EXECUTABLES)/strace $(TARGET_OUT_EXECUTABLES)/debuggerd64
TARGET_RECOVERY_DEVICE_MODULES += twrpdec
TW_RECOVERY_ADDITIONAL_RELINK_FILES += $(TARGET_RECOVERY_ROOT_OUT)/sbin/twrpdec
TW_CRYPTO_SYSTEM_VOLD_DEBUG := true

# Additional sepolicy for hwservicemanager
BOARD_SEPOLICY_DIRS += device/htc/ocm/sepolicy
