ifneq ($(BUILD_TINY_ANDROID),true)
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES:= $(notdir $(wildcard $(LOCAL_PATH)/*.c))
LOCAL_MODULE:= sock

LOCAL_CFLAGS += -I$(LOCAL_PATH)/..
LOCAL_LDFLAGS := -static
LOCAL_STATIC_LIBRARIES := libc
LOCAL_FORCE_STATIC_EXECUTABLE := true

include $(BUILD_EXECUTABLE)
endif
