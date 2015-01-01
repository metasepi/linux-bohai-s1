#! /bin/sh

oneTimeSetUp()
{
    sudo umount -f ./mnt/1_nfs2 > /dev/null 2>&1
    sudo mount -t nfs -o nfsvers=2 localhost:/var/exports/1 ./mnt/1_nfs2
    rm -rf ./mnt/1_nfs2/*
}

oneTimeTearDown()
{
    sudo umount -f ./mnt/1_nfs2
}

testShowmount()
{
    showmount localhost -e | grep /var/exports/1
    assertTrue $?
}

. /usr/bin/shunit2
