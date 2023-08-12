# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# Internal version
PB_VERSION := 1.0-alpha

# Platform version
PLAT_VERSION := 13.0

PIXELBUILDS_VERSION := PixelBuilds_$(TARGET_PRODUCT_SHORT)_$(PB_VERSION)-$(PLAT_VERSION)-$(shell date +%Y%m%d)
TARGET_PRODUCT_SHORT := $(subst aosp_,,$(TARGET_DEVICE))

ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.version.custom=$(PB_VERSION) \
    ro.build.version.device=$(TARGET_PRODUCT_SHORT) \
    ro.pb.build.version=$(PIXELBUILDS_VERSION) \
    ro.modversion=$(PB_VERSION)
