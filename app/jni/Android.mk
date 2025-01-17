LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := adbshellkit
LOCAL_SRC_FILES := adbshellkit-api.c
include $(BUILD_EXECUTABLE)

$(shell (mkdir -p $(LOCAL_PATH)/../src/main/assets/files/bin.arm))
$(shell (cp $(LOCAL_PATH)/../obj/local/armeabi-v7a/* $(LOCAL_PATH)/../src/main/assets/files/bin.arm))
$(shell (mkdir -p $(LOCAL_PATH)/../src/main/assets/files/bin.aarch64))
$(shell (cp $(LOCAL_PATH)/../obj/local/arm64-v8a/* $(LOCAL_PATH)/../src/main/assets/files/bin.aarch64))
$(shell (mkdir -p $(LOCAL_PATH)/../src/main/assets/files/bin.x86))
$(shell (cp $(LOCAL_PATH)/../obj/local/x86/* $(LOCAL_PATH)/../src/main/assets/files/bin.x86))
$(shell (mkdir -p $(LOCAL_PATH)/../src/main/assets/files/bin.x86_64))
$(shell (cp $(LOCAL_PATH)/../obj/local/x86_64/* $(LOCAL_PATH)/../src/main/assets/files/bin.x86_64))
