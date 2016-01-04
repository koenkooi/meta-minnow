KBRANCH ?= "standard/base"

require recipes-kernel/linux/linux-yocto.inc

SRCREV_machine ?= "a2f2be49cd60b8d022fa47daae0a8293c3066b78"
SRCREV_meta ?= "d5456dd830cad14bd844753b751b83744ced3793"

SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.10.git;bareclone=1;branch=${KBRANCH},${KMETA};name=machine,meta"

LINUX_VERSION ?= "3.10.65"

PV = "${LINUX_VERSION}+git${SRCPV}"

KMETA = "meta"

# Functionality flags
KERNEL_EXTRA_FEATURES ?= "features/netfilter/netfilter.scc"
KERNEL_FEATURES_append = " ${KERNEL_EXTRA_FEATURES}"
