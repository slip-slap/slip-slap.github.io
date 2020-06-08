---
layout: post
title: "Directory Hierarch"
keywords: []
description: 
category: "OS"
tags: []
---
{% include JB/setup %}


#### proc
1. linux提供了一种通过/proc文件系统，在运行时访问内核内部数据结构，改变内核设置的机制。
2. proc文件系统是一个伪文件系统，只存在内存中，不占用外存空间 
3. /proc下有三个很重要的目录，net，scsi和sys；sys是可写的，可以通过它来访问或者修改内核参数

#### 常用设置
```shell
# 关闭icmp协议
sysctl -w net.ipv4.icmp_echo_ignore_all=1
```



#### Galois
1. The directory structure of an operating system must have hierarch
   property, because some files are important to run the operation system, some
   are not, we need to put them in different folders.
2. Modern operation system is designed to be accessed by multiple users,
   according to the privelege of the users, we have to have the hierarch, for
   example, some library is designed for operation system use, some are for
   develop application, they are different, so we have to separate them into
   different folders.
