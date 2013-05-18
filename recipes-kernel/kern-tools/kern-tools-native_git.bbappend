FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
PRINC := "${@int(PRINC) + 1}"

# Pull in support for the "force" keyword in the linux-yocto-3.8 meta-data
SRCREV = "71ffb08c20022610363e68f9243350b7da020825"
