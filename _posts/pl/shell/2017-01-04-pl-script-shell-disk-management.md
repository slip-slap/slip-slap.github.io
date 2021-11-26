---
layout: post
title: "Shell: Disk Management"
keywords: []
description: 
category: "PL"
tags: ["script","shell"]
---
{% include JB/setup %}


#### Disk Partitioning
Disk partitioning is the creation of one or more regions on secondary storage(RAM is the first
storage), so that each region can be manged separately. These regions are called partitions.
1. Partition table: The disk stores the information about the partitions' locations and sizes in an
   area known as the partition table that operating system reads before any other part of the disk.
2. System Administrators use a program called a partition editor to create, resize, delete, and
   manipulate the partitions.

```shell
# view partition table
lsblk
# or, use partition editor
sudo fdisk -l
```



#### 功能
在linux系统中，默认只有三种权限，文件夹的所有者，所属组，非所有者所属组用户,
这样的分组在复杂的文件权限管理中是无法使用的，acl就是为了弥补这一缺陷而存在。
<hr />


#### 查看磁盘是否开启acl权限
```shell
# dumpe2fs 查询指定分区详细文件系统信息的命令
dumpe2fs -h /dev/vda1 | grep mount options:
# user_xattr acl 磁盘开启了acl权限
```

#### 设置acl权限
```shell
# 为文件设置acl权限后，使用ls -l查看文件信息,后面多了一个加号
# -rw-rwxr--+ 1 hy   hy    379 2月  23 20:09 docker-compose.yml
setfacl -m u:username:rwx file or directory
# 使用getfacl查看文件的acl权限信息
```

#### Configuration File 
为/etc/fstab文件<br />
fstab为file system table的缩写，描述文件信息
```shell
UUID=eb448abb-3012-4d8d-bcde-94434d586a31 /                       ext4    defaults        1 1
# 可以对该文件进行编辑 比如在defaults添加acl,显示的添加acl权限
UUID=eb448abb-3012-4d8d-bcde-94434d586a31 /                       ext4    defaults,acl        1 1
```

#### Mount Point



#### Reference
1. [View Partion Table](https://vitux.com/4-ways-to-view-the-partition-table-in-linux/)
2. [Disk
   Partitioning](https://en.wikipedia.org/wiki/Disk_partitioning#:~:text=Disk%20partitioning%20or%20disk%20slicing,any%20file%20system%20is%20created.)
3. [MBR v/s GPT and
   BIOS/UEFI](https://wiki.manjaro.org/index.php?title=Some_basics_of_MBR_v%2Fs_GPT_and_BIOS_v%2Fs_UEFI)
4. [Mount Point](http://www.linfo.org/mount_point.html#:~:text=A%20mount%20point%20is%20a,files%20on%20a%20computer%20system.)
