INHERIT += "emgd-gl"
GLSUFFIX = "-emgd"
PACKAGE_EXTRA_ARCHS_append = " ${TUNE_PKGARCH}${GLSUFFIX}"


#
# XSERVER subcomponents, used to build the XSERVER variable
#

# for Xserver older than 1.13.0
OLD_XSERVER_X86_EXT = "xserver-xorg-extension-dri \
           xserver-xorg-extension-dri2 \
           xserver-xorg-extension-extmod \
           xserver-xorg-extension-dbe \
           "
XSERVER_X86_EMGD = "emgd-driver-bin \
           ${OLD_XSERVER_X86_EXT} \
           "
PREFERRED_PROVIDER_virtual/mesa ?= "mesa-gl"
PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"
PREFERRED_PROVIDER_virtual/libgles1 ?= "emgd-driver-bin"
PREFERRED_PROVIDER_virtual/libgles2 ?= "emgd-driver-bin"
PREFERRED_PROVIDER_virtual/egl ?= "emgd-driver-bin"
