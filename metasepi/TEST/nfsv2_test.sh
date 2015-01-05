#! /bin/sh

EXPORT_PATH=/var/exports/1
MNT_PATH=./mnt/1_nfs2
DBENCH_NPROCS=5
DBENCH_TIMELIMIT=30
FSX=bin/fsx-linux
FSX_ITERATIONS=700
FSX_FILENAME=${MNT_PATH}/fsx_testfile

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

testFilelock()
{
#    flock --timeout 10 ${MNT_PATH}/lockfile echo "flocked!"
#    assertTrue $?
}

testFsx()
{
    ${FSX} -N ${FSX_ITERATIONS} ${FSX_FILENAME}
    assertTrue $?
}

testDbench()
{
    dbench -D ${MNT_PATH} -t ${DBENCH_TIMELIMIT} ${DBENCH_NPROCS}
    assertTrue $?
}

. /usr/bin/shunit2
