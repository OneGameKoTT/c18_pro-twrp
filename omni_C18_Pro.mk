$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# Otherwise, If you have 32-bit device, add the below line instead of above line
# $(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# # If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace $$DEVICE$$ with your Device Name's Value.
# Replace $$BRAND$$ with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/OUKITEL/C18_Pro/kernel:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := C18_Pro
PRODUCT_NAME := omni_C18_Pro
PRODUCT_BRAND := OUKITEL
PRODUCT_MODEL := C18_Pro
PRODUCT_MANUFACTURER := OUKITEL

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="OUKITEL/C18_Pro_EEA/C18_Pro:9/PPR1.180610.011/1592563036:user/release-keys"
    PRIVATE_BUILD_DESC="full_k57pv1_dm_64-user 9 PPR1.180610.011 eng.releas.20200630.210038 release-keys"