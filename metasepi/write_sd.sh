#!/bin/sh -e

SDDEV=$1
if [ ! -b "${SDDEV}" ] ; then
    echo "*** SDDEV:=\"${SDDEV}\" is not block device."
    exit 1
fi

mount_all() {
    sudo mount ${SDDEV}1 /mnt/raspberrypi1 || true
    sudo mount ${SDDEV}2 /mnt/raspberrypi2 || true
}

umount_all() {
    sudo umount /mnt/raspberrypi1 || true
    sudo umount /mnt/raspberrypi2 || true
}

umount_f_all() {
    sync; sync; sync
    sudo umount -f /mnt/raspberrypi1 > /dev/null 2>&1 || true
    sudo umount -f /mnt/raspberrypi2 > /dev/null 2>&1 || true
}

sudo mkdir -p /mnt/raspberrypi1 /mnt/raspberrypi2

### Start to copy kernel
umount_f_all
mount_all

if [ ! -f /mnt/raspberrypi1/cmdline.txt ] ; then
    echo "*** SDDEV:=\"${SDDEV}\" is not Raspberry PI SD card."
    umount_f_all
    exit 2
fi
if [ ! -f arch/arm/boot/zImage ] ; then
    echo "*** Kernel is not compiled."
    umount_f_all
    exit 3
fi
if [ ! -d modules_dir/lib ] ; then
    echo "*** Kernel modules are not compiled."
    umount_f_all
    exit 4
fi

sudo cp arch/arm/boot/zImage /mnt/raspberrypi1/kernel.img || true
sudo cp -pr modules_dir/lib /mnt/raspberrypi2/ || true
sudo rm -rf /mnt/raspberrypi2/home/pi/TEST || true
sudo cp -pr metasepi/TEST /mnt/raspberrypi2/home/pi/ || true

umount_all
