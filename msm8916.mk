# Audio
AUDIO_FEATURE_DEEP_BUFFER_RINGTONE := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 0

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Bootanimation
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := A6020

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
TARGET_NEEDS_LEGACY_CAMERA_HAL1_DYN_NATIVE_HANDLE := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness

# Destroyed mutex usage whitelist
TARGET_DESTROYED_MUTEX_USAGE_WHITELIST := \
   /vendor/bin/hw/android.hardware.camera.provider@2.4-service
   
# Dexpreopt
ifeq ($(HOST_OS),linux)
ifneq ($(TARGET_BUILD_VARIANT),eng)
WITH_DEXPREOPT := true
WITH_DEXPREOPT_DEBUG_INFO := false
USE_DEX2OAT_DEBUG := false
DONT_DEXPREOPT_PREBUILTS := true
WITH_DEXPREOPT_PIC := true
WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true
endif
endif

# Optimize
PRODUCT_SYSTEM_SERVER_COMPILER_FILTER := speed-profile
PRODUCT_ALWAYS_PREOPT_EXTRACTED_APK := true
PRODUCT_USE_PROFILE_FOR_BOOT_IMAGE := true
PRODUCT_DEX_PREOPT_BOOT_IMAGE_PROFILE_LOCATION := frameworks/base/config/boot-image-profile.txt

# Display
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_USES_ION := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_NEW_ION_API := true

# Render
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
USE_OPENGL_RENDERER := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432        # 32768 * 1024 # mmcblk0p22
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432    # 32768 * 1024 # mmcblk0p26
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560    # 2621440 * 1024 # mmcblk0p23
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12211698688 # 11925487 * 1024 # mmcblk0p30
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432     # 32768 * 1024 # mmcblk0p24
BOARD_CACHEIMAGE_PARTITION_SIZE := 266338304      # 260096* 1024 #mmcblk025
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(LOCAL_PATH)/config.fs

TARGET_EXFAT_DRIVER := exfat

# FM
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
BOARD_HAVE_QCOM_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# GPS
USE_DEVICE_SPECIFIC_GPS := true
TARGET_NO_RPC := true

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# Lineage hardware
BOARD_HARDWARE_CLASS += \
    device/lenovo/A6020/lineagehw

# Init
TARGET_INIT_VENDOR_LIB := libinit_A6020
TARGET_RECOVERY_DEVICE_MODULES := libinit_A6020

# Framework boost sched
ENABLE_SCHED_BOOST := true

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk pm.sleep_mode=1
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_SOURCE := kernel/lenovo/msm8916
TARGET_KERNEL_CONFIG := lineage_A6020_defconfig

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Low Memory Devices
MALLOC_SVELTE := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

# Second architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Platform
TARGET_BOARD_PLATFORM := msm8916# Power
TARGET_POWERHAL_VARIANT := qcom
TARGET_POWERHAL_SET_INTERACTIVE_EXT := device/lenovo/A6020/power/power_ext.c

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.full

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(LOCAL_PATH)# RIL
TARGET_RIL_VARIANT := caf
BOARD_PROVIDES_LIBRIL := false

# SELinux
# include device/qcom/sepolicy/sepolicy.mk
# include device/qcom/sepolicy/legacy-sepolicy.mk
# BOARD_SEPOLICY_DIRS += \
#     device/lenovo/A6020/sepolicy

# UI
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x02000000U

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"
