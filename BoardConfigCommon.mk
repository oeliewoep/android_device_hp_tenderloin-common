# inherit from the proprietary version
-include vendor/hp/tenderloin/BoardConfigVendor.mk
-include hardware/atheros/ath6kl/firmware/device-ath6kl.mk

TARGET_SPECIFIC_HEADER_PATH := device/hp/tenderloin-common/include 

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a8
TARGET_HAVE_TSLIB := false

# Art
LIBART_IMG_BASE := 0x57000000
WITH_DEXPREOPT := true

# Binder API version
TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := tenderloin

# We have so much memory 3:1 split is detrimental to us.
TARGET_USES_2G_VM_SPLIT := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/hp/tenderloin-common/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_HCI := true
BLUETOOTH_HCIATTACH_USING_PROPERTY := true

# Audio
BOARD_USES_ALSA_AUDIO := true

# Camera
USE_CAMERA_STUB := false
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USE_QCOM_PMEM := true
BOARD_CAMERA_USE_GETBUFFERINFO := true
BOARD_FIRST_CAMERA_FRONT_FACING := true
BOARD_CAMERA_USE_ENCODEDATA := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB

# Compatibilty
TARGET_NEEDS_NON_PIE_SUPPORT := true
TARGET_DISABLE_ARM_PIE := true
TARGET_NEEDS_PRELINK_SUPPORT := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
TARGET_HAS_NO_CAMERA_FLASH := true

# Device manifest
DEVICE_MANIFEST_FILE := device/hp/tenderloin-common/manifest.xml
DEVICE_MATRIX_FILE := device/hp/tenderloin-common/compatibility_matrix.xml

# Display
USE_OPENGL_RENDERER := true
BOARD_USES_LEGACY_MMAP := true
TARGET_USES_ION := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_DISPLAY_INSECURE_MM_HEAP := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true
TARGET_NO_INITLOGO := true
TARGET_USES_HWC2 := true
SF_START_GRAPHICS_ALLOCATOR_SERVICE := true
VSYNC_EVENT_PHASE_OFFSET_NS := 2000000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000

# Dosfsck from dosfstools
BOARD_USES_CUSTOM_FSCK_MSDOS := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := device/hp/tenderloin-common/uboot-bootimg.mk
BOARD_USES_UBOOT := true
BOARD_USES_UBOOT_MULTIIMAGE := true
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_CMDLINE := console=none
BOARD_KERNEL_IMAGE_NAME := uImage
BOARD_PAGE_SIZE := 2048
TARGET_KERNEL_SOURCE := kernel/htc/msm8960
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
ifndef RECOVERY_BUILD
TARGET_KERNEL_NO_MODULES := true
endif

# Logging
BOARD_NEEDS_CUTILS_LOG := true
BOARD_USES_ALT_KMSG_LOCATION := "/proc/last_klog"

# Malloc
MALLOC_SVELTE := true

# Media
TARGET_NO_ADAPTIVE_PLAYBACK := true

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1375731712  #Update to 1312
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_REQUIRES_FORCE_VPARTITION := true

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# Recovery
BOARD_HAS_SDCARD_INTERNAL := false
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_FSTAB_VERSION := 2
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_FSTAB := device/hp/tenderloin-common/rootdir/etc/fstab.tenderloin
TARGET_RECOVERY_DEVICE_DIRS := device/hp/tenderloin-common
TARGET_RECOVERY_PRE_COMMAND := "/system/bin/rebootcmd"

# Releasetools
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := device/hp/tenderloin-common/releasetools/tenderloin_img_from_target_files
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/hp/tenderloin-common/releasetools/tenderloin_ota_from_target_files

# Twrp
DEVICE_RESOLUTION = 1024x768
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_SCREEN_BLANK := true
TW_NO_REBOOT_BOOTLOADER := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_WHITELIST_INPUT := "HPTouchpad"
TW_NO_CPU_TEMP := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_ENCRYPTED_BACKUPS :=true

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# Wifi
BOARD_WLAN_DEVICE                := ath6kl
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_ath6kl
WPA_SUPPLICANT_VERSION           := VER_0_8_X

