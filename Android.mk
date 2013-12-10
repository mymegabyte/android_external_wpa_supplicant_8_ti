LOCAL_PATH:= $(call my-dir)

ifeq ($(WPA_SUPPLICANT_VERSION),VER_0_8_X_TI)
    include $(call all-subdir-makefiles)
else
    ifneq ($(BOARD_HOSTAPD_DRIVER_TI),)
        include $(LOCAL_PATH)/hostapd/Android.mk
    endif
endif
