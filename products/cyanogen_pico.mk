# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Inherit device configuration for pico.
$(call inherit-product, device/htc/pico/pico.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Broadcom FM radio
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

PRODUCT_NAME := cyanogen_pico
PRODUCT_BRAND := htc_europe
PRODUCT_DEVICE := pico
PRODUCT_MODEL := HTC EXPLORER
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_ID=GRI40 \
    PRIVATE_BUILD_DESC="pico-user 2.3.7 GRI90 20111018 release-keys" \
    BUILD_FINGERPRINT=htc/pico/pico:2.3.7/GRI90/20111018:user/release-keys

#Prelink map
PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/cyanogen/prelink-linux-arm-msm722x.map

# Add MDPI assets
PRODUCT_LOCALES += mdpi

# Release name and versioning
PRODUCT_RELEASE_NAME := Explorer
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

# Copy MDPI bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
