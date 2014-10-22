# Linux Bohai - Season 1 (for Raspberry Pi) [![Build Status](https://api.travis-ci.org/metasepi/linux-bohai-s1.svg)](https://travis-ci.org/metasepi/linux-bohai-s1/)

## How to build

First, get your own Debian PC.

Install ATS2.

```
xxx TODO xxx
```

Install ARM cross toolchain.

```
$ git clone https://github.com/raspberrypi/tools.git
$ export RASPI_PREFIX=`pwd`/tools/arm-bcm2708/arm-bcm2708hardfp-linux-gnueabi/bin/arm-bcm2708hardfp-linux-gnueabi-
$ ${RASPI_PREFIX}gcc --version | head -1
arm-bcm2708hardfp-linux-gnueabi-gcc (crosstool-NG 1.15.2) 4.7.1 20120402 (prerelease)
```

Build Linux Bohai kernel.

```
$ git clone https://github.com/metasepi/linux-bohai-s1.git
$ cd linux-bohai-s1
$ make
```
