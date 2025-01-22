# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=Teletubies Kernel
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=santoni
device.name2=Redmi 4x
device.name3=mido
device.name2=Redmi Note 4
supported.versions=
supported.patchlevels=
'; } # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
set_perm_recursive 0 0 755 644 $ramdisk/*;
set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin;

## AnyKernel boot install
dump_boot;

# begin ramdisk changes
#patch_cmdline androidboot.selinux androidboot.selinux=permissive
#patch_cmdline printk.devkmsg printk.devkmsg=off
#patch_cmdline buildvariant buildvariant=userdebug
#patch_cmdline androidboot.usbconfigfs androidboot.usbconfigfs=false

write_boot;
## end boot install


