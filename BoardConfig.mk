# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8998

# Platform
TARGET_BOARD_PLATFORM := msm8998
TARGET_BOARD_PLATFORM_GPU := qcom-adreno540

# Architecture
TARGET_USES_AOSP := true
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := krait

TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_USE_F2FS := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)

TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true

ifneq ($(TARGET_USES_AOSP),true)
TARGET_USES_QCOM_BSP := true
endif

# Keymaster 3
NEW_PLATFORM_VERSION := 8.0.0
NEW_PLATFORM_SECURITY_PATCH := 2017-12-01

BOARD_RECOVERY_IMAGE_PREPARE := \
    sed -i 's/ro.build.version.security_patch=.*/ro.build.version.security_patch=$(NEW_PLATFORM_SECURITY_PATCH)/g' $(TARGET_RECOVERY_ROOT_OUT)/prop.default ;\
    sed -i 's/ro.build.version.release=.*/ro.build.version.release=$(NEW_PLATFORM_VERSION)/g' $(TARGET_RECOVERY_ROOT_OUT)/prop.default ;

BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0
BOARD_KERNEL_CMDLINE += user_debug=31 ehci-hcd.park=3 lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1
BOARD_KERNEL_CMDLINE += swiotlb=2048 androidboot.configfs=true androidboot.usbcontroller=a800000.dwc3
BOARD_KERNEL_CMDLINE += androidboot.hardware=htc_ocm androidkey.dummy=1
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --second_offset 0x00f00000 --tags_offset 0x00000100 --board recovery:0
BOARD_MKBOOTIMG_ARGS += --os_version $(NEW_PLATFORM_VERSION) --os_patch_level $(NEW_PLATFORM_SECURITY_PATCH)

TARGET_PREBUILT_KERNEL := device/htc/$(TARGET_DEVICE)/kernel

#Enable HW based full disk encryption
TARGET_HW_DISK_ENCRYPTION := true

#TARGET_LDPRELOAD := libNimsWrap.so

-include device/htc/ocm/BoardConfigTWRP.mk
-include vendor/htc/ocm/BoardConfigVendor.mk
