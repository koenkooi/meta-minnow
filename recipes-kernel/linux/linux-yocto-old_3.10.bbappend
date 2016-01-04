FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

KERNEL_FEATURES_MINNOW_COMMON = "features/netfilter/netfilter.scc \
                                 features/usb-net/usb-net.scc \
                                 features/wifi/wifi-all.scc \
                                 features/minnow-io/minnow-io.scc \
                                 features/media/media-all.scc"

# Autoload modules for on-board hardware
KERNEL_MODULE_AUTOLOAD_COMMON = "snd_hda_intel pch_gbe \
                                 minnowboard minnowboard-gpio minnowboard-keys"

# MinnowBoard v1 w/ FBDEV Unaccelerated Graphics Driver
COMPATIBLE_MACHINE_minnow = "minnow"
KMACHINE_minnow  = "minnow"
KERNEL_FEATURES_append_minnow = " ${KERNEL_FEATURES_MINNOW_COMMON}"
KERNEL_MODULE_AUTOLOAD_minnow += "${KERNEL_MODULE_AUTOLOAD_MINNOW_COMMON}"

# MinnowBoard v1 w/ EMGD Proprietary Graphics Driver
COMPATIBLE_MACHINE_minnow-emgd = "minnow"
KMACHINE_minnow-emgd  = "minnow"
KERNEL_FEATURES_append_minnow-emgd = " ${KERNEL_FEATURES_MINNOW_COMMON} features/drm-emgd/drm-emgd-1.18"
SRC_URI_minnow-emgd = "git://git.yoctoproject.org/linux-yocto-3.10;protocol=git;nocheckout=1;branch=${KBRANCH},${KMETA},emgd-1.18;name=machine,meta,emgd"
SRCREV_emgd_pn-linux-yocto_minnow-emgd ?= "42d5e4548e8e79e094fa8697949eed4cf6af00a3"
KERNEL_MODULE_AUTOLOAD_minnow-emgd += "${KERNEL_MODULE_AUTOLOAD_MINNOW_COMMON}"
