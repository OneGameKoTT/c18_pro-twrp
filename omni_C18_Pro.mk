LOCAL_PATH := device/OUKITEL/C18_Pro

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/zImage:kernel \
    $(LOCAL_PATH)/root/init.recovery.mt6757.rc:root/init.recovery.mt6757.rc

# Necessary to mount a PC
$(call inherit-product, build/target/product/full.mk)

# Release name
PRODUCT_RELEASE_NAME := C18_Pro

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := C18_Pro
PRODUCT_NAME := omni_C18_Pro
PRODUCT_BRAND := OUKITEL
PRODUCT_MODEL := C18_Pro
PRODUCT_MANUFACTURER := OUKITEL

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += persist.sys.usb.config=mtp