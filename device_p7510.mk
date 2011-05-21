$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get a proper init file
PRODUCT_COPY_FILES += \
    device/samsung/p7510/init.p7510.rc:root/init.p7510.rc

$(call inherit-product-if-exists, vendor/samsung/p7510/harmony-p7510.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/p7510/overlay

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/p7510/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_p7510
PRODUCT_DEVICE := p7510
