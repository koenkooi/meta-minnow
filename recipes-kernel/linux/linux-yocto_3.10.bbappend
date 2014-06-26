FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

LINUX_VERSION_minnow = "3.10.43"

KBRANCH_minnow = "standard/base"

COMPATIBLE_MACHINE_minnow = "minnow"
KMACHINE_minnow  = "minnow"
KERNEL_FEATURES_append_minnow = " features/drm-emgd/drm-emgd-1.18 \
                                  features/netfilter/netfilter.scc \
                                  features/usb-net/usb-net.scc \
                                  features/wifi/wifi-all.scc \
                                  features/minnow-io/minnow-io.scc \
                                  features/media/media-all.scc \
                                "


SRC_URI_minnow = "git://git.yoctoproject.org/linux-yocto-3.10;protocol=git;nocheckout=1;branch=${KBRANCH},${KMETA},emgd-1.18;name=machine,meta,emgd"


SRCREV_machine_pn-linux-yocto_minnow ?= "aa677a2d02677ec92d59a8c36d001cf2f5cf3260"
SRCREV_meta_pn-linux-yocto_minnow ?= "199943142f7e0a283240246ee6c02f4376b315f0"
SRCREV_emgd_pn-linux-yocto_minnow ?= "42d5e4548e8e79e094fa8697949eed4cf6af00a3"

# Autoload modules for on-board hardware
KERNEL_MODULE_AUTOLOAD_minnow += "snd_hda_intel"
KERNEL_MODULE_AUTOLOAD_minnow += "pch_gbe"
KERNEL_MODULE_AUTOLOAD_minnow += "minnowboard minnowboard-gpio minnowboard-keys"
