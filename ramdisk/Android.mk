include $(CLEAR_VARS)
LOCAL_MODULE       := fstab.hi6210sft
LOCAL_MODULE_TAGS  := eng
LOCAL_MODULE_CLASS := ROOT
LOCAL_SRC_FILES    := root/fstab.hi6210sft
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.audio.rc
LOCAL_MODULE_TAGS  := eng
LOCAL_MODULE_CLASS := ROOT
LOCAL_SRC_FILES    := root/init.audio.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.connectivity.rc
LOCAL_MODULE_TAGS  := eng
LOCAL_MODULE_CLASS := ROOT
LOCAL_SRC_FILES    := root/init.connectivity.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.hi6210sft.rc
LOCAL_MODULE_TAGS  := eng
LOCAL_MODULE_CLASS := ROOT
LOCAL_SRC_FILES    := root/init.hi6210sft.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.recovery.hi6210sft.rc
LOCAL_MODULE_TAGS  := eng
LOCAL_MODULE_CLASS := ROOT
LOCAL_SRC_FILES    := root/init.recovery.hi6210sft.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.usb.hi6210sft.rc
LOCAL_MODULE_TAGS  := eng
LOCAL_MODULE_CLASS := ROOT
LOCAL_SRC_FILES    := root/init.usb.hi6210sft.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.recovery.hi6210sft.rc
LOCAL_MODULE_TAGS  := eng
LOCAL_MODULE_CLASS := ROOT
LOCAL_SRC_FILES    := root/ueventd.hi6210sft.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
