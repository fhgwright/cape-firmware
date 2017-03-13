#!/bin/bash
BASE=${1%%.dts}
TARGET=${BASE%%-00A0}
dtc -O dtb -o ${TARGET}-00A0.dtbo -b 0 -@ ${BASE}.dts || exit 1
cp -p ${TARGET}-00A0.dtbo /lib/firmware/
touch -r ${TARGET}-00A0.dtbo /lib/firmware/${TARGET}-00A0.dtbo # For NFS
