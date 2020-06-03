---
layout: post
title: "Management: Access"
keywords: []
description: 
category: "OS"
tags: ["MNG"]
---
{% include JB/setup %}

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

#### 配置文件
为/etc/fstab文件<br />
fstab为file system table的缩写，描述文件信息
```shell
UUID=eb448abb-3012-4d8d-bcde-94434d586a31 /                       ext4    defaults        1 1
# 可以对该文件进行编辑 比如在defaults添加acl,显示的添加acl权限
UUID=eb448abb-3012-4d8d-bcde-94434d586a31 /                       ext4    defaults,acl        1 1
```
