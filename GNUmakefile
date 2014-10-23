# Makefile for metasepi system.
FILE_CONFIG      = metasepi/2014-09-09-wheezy-raspbian.config
FILE_CONFIG_QEMU = metasepi/2014-09-09-wheezy-raspbian-qemu.config
MAKE_OPT         = ARCH=arm CROSS_COMPILE=${RASPI_PREFIX}

all: build

build: config.stamp
	[ ! -z "${RASPI_PREFIX}" ]
	${MAKE} -f Makefile ${MAKE_OPT}

build_qemu: config_qemu.stamp
	[ ! -z "${RASPI_PREFIX}" ]
	${MAKE} -f Makefile ${MAKE_OPT}

config.stamp: ${FILE_CONFIG}
	cp ${FILE_CONFIG} .config
	touch $@

config_qemu.stamp: ${FILE_CONFIG_QEMU}
	cp ${FILE_CONFIG_QEMU} .config
	touch $@

clean:
	rm -f config.stamp config_qemu.stamp .config
	${MAKE} -f Makefile ${MAKE_OPT} clean
# xxx TODO: target "writesd"

.PHONY: build writesd clean
