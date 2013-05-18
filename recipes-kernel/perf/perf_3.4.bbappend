FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
PRINC := "${@int(PRINC) + 1}"

# From OE-Core rev: 373371432b72cb19600a45e741afdfcb9662ecfb 
# We already pass the correct arguments to our compiler for the CFLAGS (if we
# don't override it, it'll add -m32/-m64 itself). For LDFLAGS, it was failing
# to find bfd symbols.
EXTRA_OEMAKE += "\
       'CFLAGS=${CFLAGS}' \
       'LDFLAGS=${LDFLAGS} -lpthread -lrt -lelf -lm -lbfd' \
"

# From OE-Core rev: dce7918a818bf86fcc11f561af3eacaf281403d4
do_configure_prepend () {
	sed -i 's,-Werror ,,' ${S}/tools/perf/Makefile
}
