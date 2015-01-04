# Makefile for Metasepi kernel
FILE_CONFIG      = metasepi/2014-09-09-wheezy-raspbian.config
MAKE_OPT         = ARCH=arm CROSS_COMPILE=${RASPI_PREFIX}
WRITE_SD_SH      = metasepi/write_sd.sh

all: build

build: config.stamp
	[ ! -z "${RASPI_PREFIX}" ]
	yes "" | ${MAKE} -f Makefile ${MAKE_OPT} oldconfig
	${MAKE} -f Makefile ${MAKE_OPT} # KBUILD_VERBOSE=1
	${MAKE} -f Makefile ${MAKE_OPT} INSTALL_MOD_PATH=modules_dir modules_install

config.stamp: ${FILE_CONFIG}
	#sed -e 's/=m$$/=y/g' ${FILE_CONFIG} > .config # For single binary kernel
	cp ${FILE_CONFIG} .config # For modularized kernel
	touch $@

clean:
	rm -f *.stamp .config .config.old
	${MAKE} -f Makefile ${MAKE_OPT} clean

writesd:
	sh ${WRITE_SD_SH} ${SDDEV}

.PHONY: build writesd clean
