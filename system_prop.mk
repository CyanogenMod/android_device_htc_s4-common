# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.mode=endfire \
    persist.audio.handset.mic=digital \
    persist.audio.speaker.location=high \
    persist.audio.vr.enable=false \
    qcom.hw.aac.encoder=true \
    ro.qc.sdk.audio.fluencetype=fluence

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.bt.hci_transport=smd

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/vendor/lib/libqc-opt.so

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.baseband.arch=msm

# Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq

# Wifi AP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.disableWifiApFirmwareReload=true

