Device files for building TWRP for HTC Ocean

DEVICE INFORMATION FOLLOWS
--------------------------
htc_ocmdugl:/ # cat /proc/partitions
major minor  #blocks  name

   1        0       8192 ram0
   1        1       8192 ram1
   1        2       8192 ram2
   1        3       8192 ram3
   1        4       8192 ram4
   1        5       8192 ram5
   1        6       8192 ram6
   1        7       8192 ram7
   1        8       8192 ram8
   1        9       8192 ram9
   1       10       8192 ram10
   1       11       8192 ram11
   1       12       8192 ram12
   1       13       8192 ram13
   1       14       8192 ram14
   1       15       8192 ram15
   8        0  124280832 sda
   8        1         40 sda1 - padding0
   8        2      65536 sda2 - recovery
   8        3      65536 sda3 - boot
   8        4       8192 sda4 - dtbo
   8        5    4210688 sda5 - system
   8        6    1048576 sda6 - vendor
   8        7         64 sda7 - vbmeta
   8        8     376832 sda8 - apppreload
   8        9      61440 sda9 - cota
   8       10  118431744 sda10 - userdata
   8       11       3948 sda11 - reserve0
   8       32       4096 sdc
   8       33       4052 sdc1 - xblbak
   8       16       4096 sdb
   8       17       4052 sdb1 - xbl
   8       48     458752 sdd
   8       49       1024 sdd1 - ddr
   8       50        512 sdd2 - keymaster
   8       51        512 sdd3 - lockbooter
   8       52       2048 sdd4 - tz
   8       53        512 sdd5 - rpm
   8       54        512 sdd6 - pmic
   8       55        512 sdd7 - hyp
   8       56        512 sdd8 - cmnlib
   8       57        512 sdd9 - cmnlib64
   8       58        128 sdd10 - devcfg
   8       59       1024 sdd11 - abl
   8       60      65536 sdd12 - hosd
   8       61     107520 sdd13 - radio
   8       62       5120 sdd14 - wcnss
   8       63       1024 sdd15 - bluetooth
 259        0        256 sdd16 - apdp
 259        1        256 sdd17 - msadp
 259        2      16384 sdd18 - dsp
 259        3       2048 sdd19 - venus
 259        4        128 sdd20 - storsec
 259        5     229376 sdd21 - cache
 259        6      23252 sdd22 - reserve3
   8       64     163840 sde
   8       65       1024 sde1 - misc
   8       66       2048 sde2 - modemst1
   8       67       2048 sde3 - modemst2
   8       68          8 sde4 - ssd
   8       69      32768 sde5 - persist
   8       70        128 sde6 - sec
   8       71          4 sde7 - skylink
   8       72      46080 sde8 - carrier
   8       73       1024 sde9 - mota
   8       74      20480 sde10 - fataldevlog
   8       75      30720 sde11 - devlog
   8       76       1284 sde12 - local
   8       77         64 sde13 - extra
   8       78       1024 sde14 - fsc
   8       79        512 sde15 - frp
 259        7      10240 sde16 - ramdump
 259        8         32 sde17 - control
 259        9          4 sde18 - limits
 259       10       1024 sde19 - toolsfv
 259       11       8192 sde20 - logfs
 259       12       2048 sde21 - sti
 259       13       3040 sde22 - reserve4
   8       80      57344 sdf
   8       81         16 sdf1 - board_info
   8       82        256 sdf2 - mfg
   8       83       2048 sdf3 - fsg
   8       84          4 sdf4 - devinfo
   8       85       4096 sdf5 - pg1fs
   8       86      24256 sdf6 - hvbmeta
   8       87      10240 sdf7 - tool_diag
   8       88          4 sdf8 - dpo
   8       89      10240 sdf9 - sp1
   8       90       1024 sdf10 - dip
   8       91       5116 sdf11 - reserve5

htc_ocmdugl:/ # mount
rootfs / rootfs ro,seclabel 0 0
tmpfs /dev tmpfs rw,seclabel,nosuid,relatime,mode=755 0 0
devpts /dev/pts devpts rw,seclabel,relatime,mode=600 0 0
proc /proc proc rw,relatime,gid=3009,hidepid=2 0 0
sysfs /sys sysfs rw,seclabel,relatime 0 0
selinuxfs /sys/fs/selinux selinuxfs rw,relatime 0 0
/dev/block/dm-0 /system ext4 ro,seclabel,relatime,discard,data=ordered 0 0
/dev/block/dm-1 /vendor ext4 ro,seclabel,relatime,discard,data=ordered 0 0
debugfs /sys/kernel/debug debugfs rw,seclabel,relatime 0 0
none /acct cgroup rw,relatime,cpuacct 0 0
none /dev/stune cgroup rw,relatime,schedtune 0 0
tmpfs /mnt tmpfs rw,seclabel,relatime,mode=755,gid=1000 0 0
none /config configfs rw,relatime 0 0
none /dev/cpuctl cgroup rw,relatime,cpu 0 0
none /dev/cpuset cgroup rw,relatime,cpuset,noprefix,release_agent=/sbin/cpuset_release_agent 0 0
pstore /sys/fs/pstore pstore rw,seclabel,relatime 0 0
/dev/block/bootdevice/by-name/devlog /devlog ext4 rw,lazytime,seclabel,nosuid,nodev,noatime,errors=continue,data=ordered 0 0
/dev/block/bootdevice/by-name/fataldevlog /fataldevlog ext4 rw,lazytime,seclabel,nosuid,nodev,noatime,errors=continue,data=ordered 0 0
/dev/block/bootdevice/by-name/carrier /carrier ext4 rw,lazytime,seclabel,nosuid,nodev,noatime,grpid,data=ordered 0 0
/dev/block/bootdevice/by-name/cota /cota ext4 rw,lazytime,seclabel,nosuid,nodev,noatime,grpid,data=ordered 0 0
/dev/block/bootdevice/by-name/apppreload /preload ext4 rw,lazytime,seclabel,nosuid,nodev,noatime,grpid,data=ordered 0 0
/dev/block/bootdevice/by-name/cache /cache ext4 rw,lazytime,seclabel,nosuid,nodev,noatime,errors=continue,data=ordered 0 0
/dev/block/bootdevice/by-name/persist /persist ext4 rw,lazytime,seclabel,nosuid,nodev,noatime,errors=panic,data=ordered 0 0
/dev/block/bootdevice/by-name/dsp /dsp ext4 ro,seclabel,nosuid,nodev,relatime,data=ordered 0 0
/dev/block/bootdevice/by-name/radio /firmware/image vfat ro,relatime,uid=1000,gid=1000,fmask=0337,dmask=0227,codepage=437,iocharset=iso8859-1,shortname=mixed,errors=remount-ro 0 0
tmpfs /storage tmpfs rw,seclabel,relatime,mode=755,gid=1000 0 0
tracefs /sys/kernel/debug/tracing tracefs rw,seclabel,relatime 0 0
adb /dev/usb-ffs/adb functionfs rw,relatime 0 0
/dev/block/dm-2 /data ext4 rw,lazytime,seclabel,nosuid,nodev,noatime,noauto_da_alloc,errors=panic,data=ordered 0 0
/data/media /mnt/runtime/default/emulated sdcardfs rw,nosuid,nodev,noexec,noatime,fsuid=1023,fsgid=1023,gid=1015,multiuser,mask=6 0 0
/data/media /storage/emulated sdcardfs rw,nosuid,nodev,noexec,noatime,fsuid=1023,fsgid=1023,gid=1015,multiuser,mask=6 0 0
/data/media /mnt/runtime/read/emulated sdcardfs rw,nosuid,nodev,noexec,noatime,fsuid=1023,fsgid=1023,gid=9997,multiuser,mask=23 0 0
/data/media /mnt/runtime/write/emulated sdcardfs rw,nosuid,nodev,noexec,noatime,fsuid=1023,fsgid=1023,gid=9997,multiuser,mask=7 0 0
/dev/block/vold/public:179,1 /mnt/media_rw/36323338-2d36-3233-3200-c019ab709e4f texfat rw,dirsync,nosuid,nodev,noexec,noatime,uid=1023,gid=1023,umask=0007,allow_utime=0020,codepage=437,iocharset=utf8,min_prealloc_size=64k,max_prealloc_size=121910k,writeback_boundary=4M,readahead=4M,fail_safe,discard,hidden=show,errors=continue 0 0
/dev/fuse /mnt/runtime/default/36323338-2d36-3233-3200-c019ab709e4f fuse rw,nosuid,nodev,noexec,noatime,user_id=1023,group_id=1023,default_permissions,allow_other 0 0
/dev/fuse /storage/36323338-2d36-3233-3200-c019ab709e4f fuse rw,nosuid,nodev,noexec,noatime,user_id=1023,group_id=1023,default_permissions,allow_other 0 0
/dev/fuse /mnt/runtime/read/36323338-2d36-3233-3200-c019ab709e4f fuse rw,nosuid,nodev,noexec,noatime,user_id=1023,group_id=1023,default_permissions,allow_other 0 0
/dev/fuse /mnt/runtime/write/36323338-2d36-3233-3200-c019ab709e4f fuse rw,nosuid,nodev,noexec,noatime,user_id=1023,group_id=1023,default_permissions,allow_other 0 0

/dev/block/dm-0 on /system type ext4 (ro,seclabel,relatime,discard,data=ordered)
/dev/block/dm-1 on /vendor type ext4 (ro,seclabel,relatime,discard,data=ordered)
/dev/block/sde11 on /devlog type ext4 (rw,lazytime,seclabel,nosuid,nodev,noatime,errors=continue,data=ordered)
/dev/block/sde10 on /fataldevlog type ext4 (rw,lazytime,seclabel,nosuid,nodev,noatime,errors=continue,data=ordered)
/dev/block/sde8 on /carrier type ext4 (rw,lazytime,seclabel,nosuid,nodev,noatime,grpid,data=ordered)
/dev/block/sda9 on /cota type ext4 (rw,lazytime,seclabel,nosuid,nodev,noatime,grpid,data=ordered)
/dev/block/sda8 on /preload type ext4 (rw,lazytime,seclabel,nosuid,nodev,noatime,grpid,data=ordered)
/dev/block/sdd21 on /cache type ext4 (rw,lazytime,seclabel,nosuid,nodev,noatime,errors=continue,data=ordered)
/dev/block/sde5 on /persist type ext4 (rw,lazytime,seclabel,nosuid,nodev,noatime,errors=panic,data=ordered)
/dev/block/sdd18 on /dsp type ext4 (ro,seclabel,nosuid,nodev,relatime,data=ordered)
/dev/block/dm-2 on /data type ext4 (rw,lazytime,seclabel,nosuid,nodev,noatime,noauto_da_alloc,errors=panic,data=ordered)
