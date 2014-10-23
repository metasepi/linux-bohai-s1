#!/bin/sh

wget -q http://downloads.raspberrypi.org/raspbian_latest -O raspbian_latest.zip
unzip -x raspbian_latest.zip
mv *raspbian.img raspbian.img
