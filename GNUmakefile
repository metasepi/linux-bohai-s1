# Makefile for metasepi system.
FILE_CONFIG = metasepi/2014-09-09-wheezy-raspbian.config
NUMCPU      = $(shell cat /proc/cpuinfo | grep -c "^processor")

all: build

build: .config
	${MAKE} -j ${NUMCPU} -f Makefile ARCH=arm CROSS_COMPILE=${RASPI_PREFIX}

.config: ${FILE_CONFIG}
	cp ${FILE_CONFIG} .config

# xxx TODO: target "writesd"

.PHONY: build writesd
