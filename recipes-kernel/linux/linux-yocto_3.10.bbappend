FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

LINUX_VERSION = "3.10.17"

KBRANCH_minnow = "standard/base"

COMPATIBLE_MACHINE_minnow = "minnow"
KMACHINE_minnow  = "minnow"
KERNEL_FEATURES_minnow_append = " features/drm-emgd/drm-emgd-1.18 \
                                  features/netfilter/netfilter.scc \
                                  features/usb-net/usb-net.scc \
                                  features/wifi/wifi-all.scc \
                                  features/minnow-io/minnow-io.scc \
                                "


SRC_URI_minnow = "git://git.yoctoproject.org/linux-yocto-3.10;protocol=git;nocheckout=1;branch=${KBRANCH},${KMETA},emgd-1.18;name=machine,meta,emgd \
                  file://media.cfg"


SRCREV_machine_pn-linux-yocto_minnow ?= "c03195ed6e3066494e3fb4be69154a57066e845b"
SRCREV_meta_pn-linux-yocto_minnow ?= "4a04774a6562ab37a769404920e070b70acf3c4c"
SRCREV_emgd_pn-linux-yocto_minnow ?= "39c44dd7838bfd228938219cdb21ca30c4d0cbbf"

# Autoload modules for on-board hardware
module_autoload_snd_hda_intel = "snd_hda_intel"
module_autoload_pch_gbe = "pch_gbe"
module_autoload_minnowboard = "minnowboard"
module_autoload_minnowboard-gpio = "minnowboard-gpio"
module_autoload_minnowboard-keys = "minnowboard-keys"
