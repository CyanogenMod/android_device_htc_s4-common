LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.recovery.qcom.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/init.recovery.qcom.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= lpm.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/lpm.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= charger
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= sbin/charger
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/sbin
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= choice_fn
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= sbin/choice_fn
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/sbin
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= offmode_charging
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= sbin/offmode_charging
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/sbin
include $(BUILD_PREBUILT)

ifneq ($(filter fireball ville,$(TARGET_DEVICE)),)
include $(CLEAR_VARS)
LOCAL_MODULE		:= battery_0.png
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= res/images/charger-540/battery_0.png
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/res/images/charger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= battery_1.png
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= res/images/charger-540/battery_1.png
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/res/images/charger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= battery_2.png
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= res/images/charger-540/battery_2.png
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/res/images/charger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= battery_3.png
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= res/images/charger-540/battery_3.png
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/res/images/charger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= battery_4.png
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= res/images/charger-540/battery_4.png
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/res/images/charger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= battery_fail.png
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= res/images/charger-540/battery_fail.png
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/res/images/charger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= battery_full.png
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= res/images/charger-540/battery_full.png
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/res/images/charger
include $(BUILD_PREBUILT)
endif

ifneq ($(filter evita jewel,$(TARGET_DEVICE)),)
include $(CLEAR_VARS)
LOCAL_MODULE		:= battery_0.png
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= res/images/charger-720/battery_0.png
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/res/images/charger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= battery_1.png
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= res/images/charger-720/battery_1.png
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/res/images/charger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= battery_2.png
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= res/images/charger-720/battery_2.png
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/res/images/charger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= battery_3.png
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= res/images/charger-720/battery_3.png
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/res/images/charger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= battery_4.png
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= res/images/charger-720/battery_4.png
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/res/images/charger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= battery_fail.png
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= res/images/charger-720/battery_fail.png
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/res/images/charger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= battery_full.png
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= res/images/charger-720/battery_full.png
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/res/images/charger
include $(BUILD_PREBUILT)
endif
