#!/bin/bash
# based on the instructions from edk2-platform
mkdir workspace
set -e
. build_common.sh
# not actually GCC5; it's GCC7 on Ubuntu 18.04.
GCC5_AARCH64_PREFIX=aarch64-linux-gnu- build -s -n 0 -a AARCH64 -t GCC5 -p a52sxq/a52sxq_6G.dsc -b RELEASE
gzip -c < workspace/Build/a52sxq/RELEASE_GCC5/FV/A52SXQ_UEFI.fd >uefi.img
cat a52sxq.dtb >>uefi.img
echo > ramdisk
abootimg --create boot-a52sxq.img -k uefi.img -r ramdisk
