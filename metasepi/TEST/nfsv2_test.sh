#! /bin/sh

EXPORT_PATH=/var/exports/1
MNT_PATH=./mnt/1_nfs2
DBENCH_NPROCS=5
DBENCH_TIMELIMIT=60

oneTimeSetUp()
{
    sudo umount -f ${MNT_PATH} > /dev/null 2>&1
    sudo mount -t nfs -o nfsvers=2 localhost:${EXPORT_PATH} ${MNT_PATH}
    rm -rf ${MNT_PATH}/*
}

oneTimeTearDown()
{
    sudo umount -f ${MNT_PATH}
}

testShowmount()
{
    showmount localhost -e | grep ${EXPORT_PATH}
    assertTrue $?
}

testDbench()
{
    dbench -D ${MNT_PATH} -t ${DBENCH_TIMELIMIT} ${DBENCH_NPROCS}
    assertTrue $?
}

. /usr/bin/shunit2
