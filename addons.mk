PRODUCT_PACKAGE_OVERLAYS += build/addons/overlay

# init.d support
PRODUCT_COPY_FILES += \
    build/addons/prebuilt/system/etc/init.d/00banner:system/etc/init.d/00banner \
    build/addons/prebuilt/system/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    build/addons/prebuilt/system/etc/init.d/90userinit:system/etc/init.d/90userinit

# SELinux filesystem labels
PRODUCT_COPY_FILES += \
    build/addons/prebuilt/system/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# Custom init file
PRODUCT_COPY_FILES += \
    build/addons/prebuilt/root/etc/init.addons.rc:root/init.addons.rc

# Gesture enabled JNI for IME
PRODUCT_COPY_FILES += \
    build/addons/prebuilt/system/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Custom packages
PRODUCT_PACKAGES += \
    Launcher3

# Optional packages
PRODUCT_PACKAGES += \
    VoicePlus \
    VoiceDialer \
    CMFileManager \
    ScreenRecorder \
    CellBroadcastReceiver

# Extra tools
PRODUCT_PACKAGES += \
    bash \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    vim \
    nano \
    htop \
    procmem \
    procrank \
    powertop \
    lsof \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g \
    rsync

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# Superuser stuff
PRODUCT_PACKAGES += Superuser su
SUPERUSER_EMBEDDED := true
PRODUCT_PROPERTY_OVERRIDES += persist.sys.root_access=3
