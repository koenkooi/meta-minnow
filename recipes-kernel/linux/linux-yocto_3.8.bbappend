FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

LINUX_VERSION = "3.8.13"

KBRANCH_minnow = "standard/minnow"

COMPATIBLE_MACHINE_minnow = "minnow"
KMACHINE_minnow  = "minnow"
KERNEL_FEATURES_minnow_append = " features/drm-emgd/drm-emgd-1.18 \
                                  features/netfilter/netfilter.scc \
                                  features/usb-net/usb-net.scc \
                                  features/iwlwifi/iwlwifi.scc \
                                  features/iwlegacy/iwlegacy.scc \
                                  features/iwlegacy/iwlagn.scc \
                                "

SRC_URI_minnow = "git://git.yoctoproject.org/linux-yocto-3.8.git;protocol=git;nocheckout=1;branch=${KBRANCH},${KMETA},emgd-1.18;name=machine,meta,emgd \
           file://media.cfg"

SRCREV_machine_pn-linux-yocto_minnow ?= "4afed227ab8d84c7eaf222cad85e8232e4ea9cb0"
SRCREV_meta_pn-linux-yocto_minnow ?= "375cb6ebfdb23b0e81cc557bdd4dd39fab29bc50"
SRCREV_emgd_pn-linux-yocto_minnow ?= "a18cbb7a2886206815dbf6c85caed3cb020801e0"

# Autoload modules for on-board hardware
module_autoload_snd_hda_intel = "snd_hda_intel"
module_autoload_pch_gbe = "pch_gbe"
module_autoload_minnowboard = "minnowboard"
module_autoload_minnowboard-gpio = "minnowboard-gpio"
module_autoload_minnowboard-keys = "minnowboard-keys"
