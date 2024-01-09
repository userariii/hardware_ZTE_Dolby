ZTEDOLBY_PATH := hardware/ZTE/Dolby

PRODUCT_SOONG_NAMESPACES += $(ZTEDOLBY_PATH)

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.feature.dolby_enable=true \
	vendor.audio.dolby.ds2.hardbypass=false \
	ro.audio.monitorRotation=true \
	ro.audio.monitorWindowRotation=true

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += hardware/ZTE/Dolby/sepolicy/vendor

# Dolby tuner specific
PRODUCT_PACKAGES += \
	DaxUI \
	DolbyAtmos \
	daxService

# Configs
PRODUCT_COPY_FILES += \
    $(ZTEDOLBY_PATH)/proprietary/vendor/etc/dolby/dap-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dap-default.xml \
    $(ZTEDOLBY_PATH)/proprietary/vendor/etc/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml

# Proprietary blobs
PRODUCT_PACKAGES += \
	$(ZTEDOLBY_PATH)/proprietary/system/lib/libhidlbase.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libhidlbase.so \
	$(ZTEDOLBY_PATH)/proprietary/system/lib/libhidltransport.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libhidltransport.so \
	$(ZTEDOLBY_PATH)/proprietary/system/lib/libhwbinder.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libhwbinder.so \
	$(ZTEDOLBY_PATH)/proprietary/system_ext/etc/permissions/dolby_dax.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/dolby_dax.xml \
	$(ZTEDOLBY_PATH)/proprietary/system_ext/etc/permissions/privapp-com.dolby.atmos.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-com.dolby.atmos.xml \
	$(ZTEDOLBY_PATH)/proprietary/system_ext/etc/permissions/privapp-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-com.dolby.daxservice.xml \
	$(ZTEDOLBY_PATH)/proprietary/system_ext/etc/sysconfig/config-com.dolby.atmos.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/config-com.dolby.atmos.xml \
	$(ZTEDOLBY_PATH)/proprietary/system_ext/etc/sysconfig/config-com.dolby.daxappui.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/config-com.dolby.daxappui.xml \
	$(ZTEDOLBY_PATH)/proprietary/system_ext/etc/sysconfig/config-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/config-com.dolby.daxservice.xml \
	$(ZTEDOLBY_PATH)/proprietary/system_ext/framework/dolby_dax.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/dolby_dax.jar \
	$(ZTEDOLBY_PATH)/proprietary/system/lib64/libhidlbase.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libhidlbase.so \
	$(ZTEDOLBY_PATH)/proprietary/system/lib64/libhidltransport.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libhidltransport.so \
	$(ZTEDOLBY_PATH)/proprietary/system/lib64/libhwbinder.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libhwbinder.so \
	$(ZTEDOLBY_PATH)/proprietary/vendor/bin/hw/vendor.dolby.hardware.dms@1.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.hardware.dms@1.0-service \
	$(ZTEDOLBY_PATH)/proprietary/vendor/bin/hw/vendor.dolby.hardware.dms@2.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.hardware.dms@2.0-service \
	$(ZTEDOLBY_PATH)/proprietary/vendor/etc/init/vendor.dolby.hardware.dms@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.hardware.dms@1.0-service.rc \
	$(ZTEDOLBY_PATH)/proprietary/vendor/lib/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdapparamstorage.so \
	$(ZTEDOLBY_PATH)/proprietary/vendor/lib/libdlbdsservice.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdlbdsservice.so \
	$(ZTEDOLBY_PATH)/proprietary/vendor/lib/libstagefright_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_soft_ddpdec.so \
	$(ZTEDOLBY_PATH)/proprietary/vendor/lib/libstagefrightdolby.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefrightdolby.so \
	$(ZTEDOLBY_PATH)/proprietary/vendor/lib/soundfx/libatmos.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libatmos.so \
	$(ZTEDOLBY_PATH)/proprietary/vendor/lib/vendor.dolby.hardware.dms@1.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.dolby.hardware.dms@1.0-impl.so \
	$(ZTEDOLBY_PATH)/proprietary/vendor/lib/vendor.dolby.hardware.dms@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.dolby.hardware.dms@1.0.so \
	$(ZTEDOLBY_PATH)/proprietary/vendor/lib64/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdapparamstorage.so \
	$(ZTEDOLBY_PATH)/proprietary/vendor/lib64/libdlbdsservice.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbdsservice.so \
	$(ZTEDOLBY_PATH)/proprietary/vendor/lib64/libstagefrightdolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefrightdolby.so \
	$(ZTEDOLBY_PATH)/proprietary/vendor/lib64/soundfx/libatmos.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libatmos.so \
	$(ZTEDOLBY_PATH)/proprietary/vendor/lib64/vendor.dolby.hardware.dms@1.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@1.0-impl.so \
	$(ZTEDOLBY_PATH)/proprietary/vendor/lib64/vendor.dolby.hardware.dms@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@1.0.so \
	$(ZTEDOLBY_PATH)/proprietary/vendor/odm/bin/hw/vendor.dolby.hardware.dms@2.0-service:$(TARGET_COPY_OUT_VENDOR)/odm/bin/hw/vendor.dolby.hardware.dms@2.0-service