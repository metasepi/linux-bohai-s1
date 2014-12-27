# Makefile for metasepi system.
FILE_CONFIG      = metasepi/2014-09-09-wheezy-raspbian.config
MAKE_OPT         = ARCH=arm CROSS_COMPILE=${RASPI_PREFIX}

all: build

build: config.stamp
	[ ! -z "${RASPI_PREFIX}" ]
	${MAKE} -f Makefile ${MAKE_OPT}
	${MAKE} -f Makefile ${MAKE_OPT} INSTALL_MOD_PATH=modules_dir modules_install

config.stamp: ${FILE_CONFIG}
	cp ${FILE_CONFIG} .config
	touch $@

clean:
	git checkout arch/arm/mach-versatile/Kconfig arch/arm/mm/Kconfig
	rm -f config.stamp .config
	${MAKE} -f Makefile ${MAKE_OPT} clean
# xxx TODO: target "writesd"

.PHONY: build writesd clean
