---
layout: post
title: centos7的目录结构
categories: linux
---
* content
{:toc}


#### proc
1. linux提供了一种通过/proc文件系统，在运行时访问内核内部数据结构，改变内核设置的机制。
2. proc文件系统是一个伪文件系统，只存在内存中，不占用外存空间 
3. /proc下有三个很重要的目录，net，scsi和sys；sys是可写的，可以通过它来访问或者修改内核参数

#### 常用设置
```shell
# 关闭icmp协议
sysctl -w net.ipv4.icmp_echo_ignore_all=1
```
