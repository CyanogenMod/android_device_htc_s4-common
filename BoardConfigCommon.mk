# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# Inherit from common msm8960
-include device/htc/msm8960-common/BoardConfigCommon.mk

LOCAL_PATH := device/htc/s4-common

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Kernel
BOARD_KERNEL_BASE := 0x80400000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01700000
TARGET_KERNEL_SOURCE := kernel/htc/msm8960

# Audio
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true
BOARD_USES_SEPERATED_VOIP := true

# Bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_RELEASE_CPPFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
USE_DEVICE_SPECIFIC_CAMERA := true

# Charger
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/htc_lpm/lpm_mode

# CMHW
BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/cmhw

# Graphics
TARGET_DISPLAY_INSECURE_MM_HEAP := true

# Media
TARGET_NO_ADAPTIVE_PLAYBACK := true

# Radio
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril
BOARD_RIL_NO_CELLINFOLIST := true
BOARD_USES_LEGACY_MMAP := true

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../$(LOCAL_PATH)/recovery/source/recovery_keys.c
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_BLDRMSG_OFFSET := 2048
BOARD_RECOVERY_SWIPE := true
TARGET_RECOVERY_DEVICE_DIRS += device/htc/s4-common
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"

# Release tools
TARGET_RELEASETOOLS_EXTENSIONS := $(LOCAL_PATH)

# SELinux
-include device/qcom/sepolicy/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    device/htc/s4-common/sepolicy

BOARD_SEPOLICY_UNION += \
    property_contexts \
    recovery.te

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
TARGET_USES_WCNSS_CTRL := true
TARGET_USES_QCOM_WCNSS_QMI := true
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/prima_wlan/parameters/fwpath"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# inherit from the proprietary version
-include vendor/htc/s4-common/BoardConfigVendor.mk
