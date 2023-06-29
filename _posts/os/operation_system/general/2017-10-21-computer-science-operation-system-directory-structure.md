---
layout: post
title: "OS: Directory Hierarch"
keywords: []
description: 
category: "CS"
tags: ["OS"]
---
{% include JB/setup %}


#### 1. proc
1. linux提供了一种通过/proc文件系统，在运行时访问内核内部数据结构，改变内核设置的机制。
2. proc文件系统是一个伪文件系统，只存在内存中，不占用外存空间 
3. /proc下有三个很重要的目录，net，scsi和sys；sys是可写的，可以通过它来访问或者修改内核参数

##### 1.1 常用设置
```shell
# 关闭icmp协议
sysctl -w net.ipv4.icmp_echo_ignore_all=1
```

#### 2. /opt and /usr/local
1. In the old days, the /opt directory is used for UNIX vendors to hold third-party packages.
2. the /usr/local is used for software that is not managed by the system packager, but still following 
the standard unix deploy rules. That's why you have the following directories in the /usr/local
- /usr/local/include
- /usr/local/bin
- /usr/local/sbin
3. /opt is for software doesn't follow this and is deployed in a monolithic fashion.




#### Galois
1. The directory structure of an operating system must have hierarch
   property, because some files are important to run the operation system, some
   are not, we need to put them in different folders.
2. Modern operation system is designed to be accessed by multiple users,
   according to the privelege of the users, we have to have the hierarch, for
   example, some library is designed for operation system use, some are for
   develop application, they are different, so we have to separate them into
   different folders.


#### Reference
1. [/opt directory](https://stackoverflow.com/questions/12649355/what-does-opt-mean-as-in-the-opt-directory-is-it-an-abbreviation/12649407#:~:text=According%20to%20the%20Filesystem%20Hierarchy,administrator%20when%20installing%20software%20locally%22.)
2. [difference between /usr/local and /opt](https://unix.stackexchange.com/questions/11544/what-is-the-difference-between-opt-and-usr-local)
