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

## How to snatch Linux kernel with ATS2

See following Hongwei comment.

```
If you are reading this message, then you have probably heard or read that ATS
is good for safe systems programming. But you may not have seen low-level systems
code written in ATS, right? There is a reason for this obvious irony for writing such code
in ATS is very challenging. It took us a long time to learn the ropes.

Now I want to write a little bit on how ATS can be used effectively to implement low-level
systems. My focus here is on implementing device drivers for Linux. I will try to follow the
following book:

http://www.tldp.org/LDP/lkmpg/2.6/

The code I use is to be stored at:

https://github.com/githwxi/ATS-Postiats-contrib/tree/master/projects/MEDIUM/LinuxKerneling/

For testing, I suggest that a qemu image be used. I will do a post on it later.
```

## About QEMU issue

* [Compiling an ARM1176 kernel for QEMU (Tutorial) - XEC Design](http://xecdesign.com/compiling-a-kernel/)
* [Raspberry Pi • View topic - HOWTO: Virtual Raspbian on Qemu in Ubuntu Linux 12.10](http://www.raspberrypi.org/forums/viewtopic.php?f=29&t=37386)

