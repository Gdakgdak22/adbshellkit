#CFLAGS += -std=c11 -Wall -Wextra -pedantic -Werror
#PREFIX ?= /data/data/com.termux/files/usr
#termux-api: termux-api.c
#install: termux-api
#	mkdir -p $(PREFIX)/bin/ $(PREFIX)/libexec/
#	install termux-api $(PREFIX)/libexec/
#	install scripts/* $(PREFIX)/bin/
#.PHONY: install
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := adbshellkit-api
LOCAL_SRC_FILES := adbshellkit-api.c

include $(BUILD_EXECUTABLE)

$(shell (cp $(LOCAL_PATH)/../obj/local/arm64-v8a/adbshellkit-api $(LOCAL_PATH)/../src/main/assets/files/bin))
$(shell (mkdir -p $(LOCAL_PATH)/../src/main/assets/files/bin.armeabi-v7a))
$(shell (cp $(LOCAL_PATH)/../obj/local/armeabi-v7a/adbshellkit-api $(LOCAL_PATH)/../src/main/assets/files/bin.armeabi-v7a))
$(shell (mkdir -p $(LOCAL_PATH)/../src/main/assets/files/bin.x86))
$(shell (cp $(LOCAL_PATH)/../obj/local/x86/adbshellkit-api $(LOCAL_PATH)/../src/main/assets/files/bin.x86))
