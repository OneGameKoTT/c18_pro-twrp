# Replace C18_Pro with your Device Name's Value.
# Replace OUKITEL with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/OUKITEL/C18_Pro/prebuilt/zImage:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += device/OUKITEL/C18_Pro/root/init.recovery.mt6757.rc:root/init.recovery.mt6757.rc
# $(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_DEVICE := C18_Pro
PRODUCT_NAME := omni_C18_Pro
PRODUCT_BRAND := OUKITEL
PRODUCT_MODEL := C18_Pro
PRODUCT_MANUFACTURER := OUKITEL

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT="OUKITEL/C18_Pro_EEA/C18_Pro:9/PPR1.180610.011/1592563036:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_k57pv1_dm_64-user 9 PPR1.180610.011 eng.releas.20200630.210038 release-keys"