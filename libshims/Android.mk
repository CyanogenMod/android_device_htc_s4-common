LOCAL_PATH := $(call my-dir)

# htc_log

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    htc_log.c

LOCAL_MODULE := libshim_log
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)


# libqc-opt

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
     icu53.c

LOCAL_SHARED_LIBRARIES := libicuuc libicui18n
LOCAL_MODULE := libshim_qcopt
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
