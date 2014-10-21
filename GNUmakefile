# Makefile for metasepi system.
FILE_CONFIG = metasepi/2014-09-09-wheezy-raspbian.config

all: build

build: .config
	${MAKE} -f Makefile ARCH=arm CROSS_COMPILE=${RASPI_PREFIX}

.config: ${FILE_CONFIG}
	cp ${FILE_CONFIG} .config

# xxx TODO: target "writesd"

.PHONY: build writesd
