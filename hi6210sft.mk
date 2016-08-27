# Android Open Source Project
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/huawei/hi6210sft/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    	$(LOCAL_KERNEL):kernel

# Modules
PRODUCT_COPY_FILES += \
        device/huawei/hi6210sft/modules/ansi_cprng.ko:system/modules/ansi_cprng.ko \
        device/huawei/hi6210sft/modules/backlight.ko:system/modules/backlight.ko \
        device/huawei/hi6210sft/modules/gator.ko:system/modules/gator.ko \
        device/huawei/hi6210sft/modules/generic_bl.ko:system/modules/generic_bl.ko \
        device/huawei/hi6210sft/modules/lcd.ko:system/modules/lcd.ko \

# Ramdisk
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/ramdisk/fstab.hi6210sft:root/fstab.hi6210sft \
        $(LOCAL_PATH)/ramdisk/init.audio.rc:root/init.audio.rc \
        $(LOCAL_PATH)/ramdisk/init.connectivity.rc:root/init.connectivity.rc \
        $(LOCAL_PATH)/ramdisk/init.hi6210sft.rc:root/init.hi6210sft.rc \
        $(LOCAL_PATH)/ramdisk/init.recovery.hi6210sft.rc:root/init.recovery.hi6210sft.rc \
        $(LOCAL_PATH)/ramdisk/init.usb.hi6210sft.rc:root/init.usb.hi6210sft.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.hi6210sft.rc:root/ueventd.hi6210sft.rc \
        $(LOCAL_PATH)/ramdisk/sbin/check_root:root/sbin/check_root \
        $(LOCAL_PATH)/ramdisk/sbin/hw_ueventd:root/sbin/hw_ueventd \
        $(LOCAL_PATH)/ramdisk/sbin/kmsgcat:root/sbin/kmsgcat \
        $(LOCAL_PATH)/ramdisk/sbin/logctl_service:root/sbin/logctl_service \
        $(LOCAL_PATH)/ramdisk/sbin/oeminfo_nvm_server:root/sbin/oeminfo_nvm_server \
        $(LOCAL_PATH)/ramdisk/sbin/teecd:root/sbin/teecd \
        $(LOCAL_PATH)/ramdisk/sbin/volisnotd:root/sbin/volisnotd \
