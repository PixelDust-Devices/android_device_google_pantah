# artifacts
$(call inherit-product, device/google/pantah/artifacts.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/pantah/overlay-spark

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

# EUICC
PRODUCT_PACKAGES += \
    EuiccSupportPixelOverlay

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.columbus.use_ap_sensor=false
