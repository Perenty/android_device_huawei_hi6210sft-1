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
PRODUCT_PACKAGES += \
    	fstab.hi6210sft \
    	init.audio.rc \
    	init.connectivity.rc \
    	init.hi6210sft.rc \
    	init.recovery.hi6210sft.rc \
    	init.usb.hi6210sft.rc \
    	ueventd.hi6210sft.rc
