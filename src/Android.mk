ifneq ($(BUILD_TINY_ANDROID),true)
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES:= $(notdir $(wildcard $(LOCAL_PATH)/*.c))
LOCAL_MODULE:= sock

#LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT_SBIN)
#LOCAL_UNSTRIPPED_PATH := $(TARGET_ROOT_OUT_SBIN_UNSTRIPPED)
#LOCAL_STATIC_LIBRARIES := libcutils libc

LOCAL_C_INCLUDES += external/libnl-headers
LOCAL_CFLAGS += -DCONFIG_LIBNL20 -I$(LOCAL_PATH)/..
LOCAL_SHARED_LIBRARIES := libc libnetutils
LOCAL_STATIC_LIBRARIES := libnl_2 libc
LOCAL_FORCE_STATIC_EXECUTABLE := true

include $(BUILD_EXECUTABLE)
endif
