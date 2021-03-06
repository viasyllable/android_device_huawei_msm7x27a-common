# inherit from the proprietary version

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_CPU_SMP := true
TARGET_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
TARGET_CORTEX_CACHE_LINE_32 := true
TARGET_USE_SPARROW_BIONIC_OPTIMIZATION := true

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_7X27A_HARDWARE
COMMON_GLOBAL_CFLAGS += -DGENLOCK_IOC_DREADLOCK -DANCIENT_GL -DQCOM_ICS_COMPAT

# Audio
#TARGET_USES_QCOM_LPA := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50001
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7x27a

# Lights
TARGET_USE_HUAWEI_LIBLIGHTS := true

# FM Radio
#BOARD_HAVE_QCOM_FM := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO -DFM_RADIO

TARGET_SPECIFIC_HEADER_PATH := device/huawei/msm7x27a-common/include

BOARD_NEEDS_MEMORYHEAPPMEM := true

# OpenGL drivers config file path
BOARD_EGL_CFG := device/huawei/msm7x27a-common/config/egl.cfg

BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true
TARGET_GRALLOC_USES_ASHMEM := true
COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27A
TARGET_NO_HW_VSYNC := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
DCHECK_FOR_EXTERNAL_FORMAT := true
BOARD_USE_SKIA_LCDTEXT := true
USE_OPENGL_RENDERER := true
TARGET_USES_ION := false
TARGET_PROVIDES_LIBLIGHT := true
TARGET_FORCE_CPU_UPLOAD := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true

COMMON_GLOBAL_CFLAGS += -DHAVE_ARM_TLS_REGISTER
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK

WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome
ENABLE_WEBGL := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/msm7x27a-common/bluetooth/
BOARD_BLUEDROID_VENDOR_CONF := device/huawei/msm7x27a-common/bluetooth/vnd_bcmdhd.txt
# Boot
BOARD_WANTS_EMMC_BOOT := true
# RIL
#BOARD_PROVIDES_LIBRIL := true

# Wi-Fi
#WIFI_BAND 							:= 802_11_ABG
BOARD_WLAN_DEVICE 					:= bcmdhd
WPA_SUPPLICANT_VERSION 				:= VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER 		:= NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB 	:= lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER 				:= NL80211
BOARD_HOSTAPD_PRIVATE_LIB 			:= lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_PATH     		:= "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_MODULE_NAME     		:= "bcmdhd"
WIFI_DRIVER_MODULE_ARG      		:= "firmware_path=/system/wifi/fw_4330.bin nvram_path=/system/wifi/nvram.txt"
WIFI_DRIVER_FW_PATH_PARAM   		:= "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     		:= "/system/wifi/fw_4330_b2.bin"
WIFI_DRIVER_FW_PATH_AP      		:= "/system/wifi/fw_4330_b2.bin"
#WIFI_DRIVER_FW_PATH_P2P     := "/system/wifi/fw_4330_b2.bin"
BOARD_LEGACY_NL80211_STA_EVENTS		:= true
BOARD_USE_SERNUM_FOR_MAC 			:= true
