#!/bin/bash
proj=$1
base_dir=`pwd`
proj_dir=$base_dir/$proj
config_dir=$base_dir/soft_config

bsp=$config_dir/xilinx-zcu102-2017.1-final.bsp
fpga=$config_dir/rocketchip_wrapper.bit
cd $proj_dir 
petalinux-package --force --boot --u-boot --fpga $fpga
#Now you have BOOT.BIN and image.ub
