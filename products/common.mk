# Generic product
PRODUCT_NAME := fuego
PRODUCT_BRAND := fuego
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/fuego/overlay/common

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.setupwizard.enterprise_mode=1

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/fuego/proprietary/common/app/Calendar.apk:system/app/Calendar.apk \
    vendor/fuego/proprietary/common/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    vendor/fuego/proprietary/common/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/fuego/proprietary/common/app/GoogleEars.apk:system/app/GoogleEars.apk \
    vendor/fuego/proprietary/common/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    vendor/fuego/proprietary/common/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    vendor/fuego/proprietary/common/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    vendor/fuego/proprietary/common/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    vendor/fuego/proprietary/common/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
    vendor/fuego/proprietary/common/app/GmsCore.apk:system/app/GmsCore.apk \
    vendor/fuego/proprietary/common/app/LatinIMEDictionaryPack.apk:system/app/LatinIMEDictionaryPack.apk \
    vendor/fuego/proprietary/common/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/fuego/proprietary/common/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/fuego/proprietary/common/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/fuego/proprietary/common/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/fuego/proprietary/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/fuego/proprietary/common/app/Talk.apk:system/app/Talk.apk \
    vendor/fuego/proprietary/common/app/Velvet.apk:system/app/Velvet.apk \
    vendor/fuego/proprietary/common/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/fuego/proprietary/common/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/fuego/proprietary/common/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml \
    vendor/fuego/proprietary/common/etc/updatecmds/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt \
    vendor/fuego/proprietary/common/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/fuego/proprietary/common/lib/libchromeview.so:system/lib/libchromeview.so \
    vendor/fuego/proprietary/common/lib/libgoogle_recognizer_jni.so:system/lib/libgoogle_recognizer_jni.so \
    vendor/fuego/proprietary/common/lib/libjni_eglfence.so:system/lib/libjni_eglfence.so \
    vendor/fuego/proprietary/common/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so \
    vendor/fuego/proprietary/common/lib/libpatts_engine_jni_api.so:system/lib/libpatts_engine_jni_api.so \
    vendor/fuego/proprietary/common/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/fuego/proprietary/common/lib/libttscompat.so:system/lib/libttscompat.so \
    vendor/fuego/proprietary/common/lib/libttspico.so:system/lib/libttspico.so \
    vendor/fuego/proprietary/common/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so \
    vendor/fuego/proprietary/common/lib/libvideochat_stabilize.so:system/lib/libvideochat_stabilize.so \
    vendor/fuego/proprietary/common/lib/libvoicesearch.so:system/lib/libvoicesearch.so \
    vendor/fuego/proprietary/common/lib/libvorbisencoder.so:system/lib/libvorbisencoder.so \
    vendor/fuego/proprietary/common/xbin/su:system/xbin/su

ifeq ($(TARGET_BUILD_VARIANT),user)
# Blobs common to all devices except emulator
PRODUCT_COPY_FILES += \
    vendor/fuego/proprietary/common/app/Gallery2.apk:system/app/Gallery2.apk \
    vendor/fuego/proprietary/common/app/Music.apk:system/app/Music.apk \

endif

ifneq ($(filter fuego_de_toro,$(TARGET_PRODUCT)),)
# Blobs common to all devices except emulator and tablets
PRODUCT_COPY_FILES += \
    vendor/fuego/proprietary/common/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/fuego/proprietary/common/app/SetupWizard.apk:system/app/SetupWizard.apk
endif

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

