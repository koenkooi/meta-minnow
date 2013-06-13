require recipes-kernel/linux/linux-yocto.inc

KBRANCH_DEFAULT = "standard/minnow"
KBRANCH = "${KBRANCH_DEFAULT}"
KMETA = "meta"

SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.8;protocol=git;nocheckout=1;branch=${KBRANCH},${KMETA},emgd-1.16;name=machine,meta,emgd \
           file://media.cfg"

SRCREV_machine_pn-linux-yocto ?= "4afed227ab8d84c7eaf222cad85e8232e4ea9cb0"
SRCREV_meta_pn-linux-yocto ?= "c0851dfb8535635e1e31d4a5146d3f021e30506c"
SRCREV_emgd_pn-linux-yocto ?= "caea08c988e0f41103bbe18eafca20348f95da02"

LINUX_VERSION ?= "3.8.13"

PR = "${INC_PR}.1"
PV = "${LINUX_VERSION}+git${SRCPV}"

COMPATIBLE_MACHINE = "minnow"
KMACHINE_minnow  = "minnow"

# Functionality flags
KERNEL_FEATURES_minnow_append = " features/drm-emgd/drm-emgd-1.16 \
                                  features/netfilter/netfilter.scc \
                                  features/usb-net/usb-net.scc"

# Autoload modules for on-board hardware
module_autoload_snd_hda_intel = "snd_hda_intel"
module_autoload_pch_gbe = "pch_gbe"
module_autoload_minnowboard = "minnowboard"
module_autoload_minnowboard-gpio = "minnowboard-gpio"
module_autoload_minnowboard-keys = "minnowboard-keys"
