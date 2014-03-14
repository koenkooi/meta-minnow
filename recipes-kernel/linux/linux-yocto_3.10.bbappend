FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

LINUX_VERSION = "3.10.33"

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


SRCREV_machine_pn-linux-yocto_minnow ?= "21df0c8486e129a4087970a07b423c533ae05de7"
SRCREV_meta_pn-linux-yocto_minnow ?= "6e0e756d51372c8b176c5d1e6f786545bceed351"
SRCREV_emgd_pn-linux-yocto_minnow ?= "42d5e4548e8e79e094fa8697949eed4cf6af00a3"

# Autoload modules for on-board hardware
module_autoload_snd_hda_intel = "snd_hda_intel"
module_autoload_pch_gbe = "pch_gbe"
module_autoload_minnowboard = "minnowboard"
module_autoload_minnowboard-gpio = "minnowboard-gpio"
module_autoload_minnowboard-keys = "minnowboard-keys"
