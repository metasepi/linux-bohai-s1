# Makefile for metasepi system.
FILE_CONFIG      = metasepi/2014-09-09-wheezy-raspbian.config
FILE_CONFIG_QEMU = metasepi/2014-09-09-wheezy-raspbian-qemu.config
MAKE_OPT         = ARCH=arm CROSS_COMPILE=${RASPI_PREFIX}

all: build

build: config.stamp
	[ ! -z "${RASPI_PREFIX}" ]
	${MAKE} -f Makefile ${MAKE_OPT}
	${MAKE} -f Makefile ${MAKE_OPT} INSTALL_MOD_PATH=modules_dir modules_install

build_qemu: config_qemu.stamp
	[ ! -z "${RASPI_PREFIX}" ]
	${MAKE} -f Makefile ${MAKE_OPT}
	${MAKE} -f Makefile ${MAKE_OPT} INSTALL_MOD_PATH=modules_dir modules_install

config.stamp: ${FILE_CONFIG}
	cp ${FILE_CONFIG} .config
	touch $@

config_qemu.stamp: ${FILE_CONFIG_QEMU}
	cp ${FILE_CONFIG_QEMU} .config
	patch -p1 < metasepi/ARM11_for_Versatile.patch
	touch $@

clean:
	git checkout arch/arm/mach-versatile/Kconfig arch/arm/mm/Kconfig
	rm -f config.stamp config_qemu.stamp .config
	${MAKE} -f Makefile ${MAKE_OPT} clean
# xxx TODO: target "writesd"

.PHONY: build writesd clean
