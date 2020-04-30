---
layout: post
title: "CLI: Shell"
keywords: []
description: 
category: "linux"
tags: ["CLI"]
---
{% include JB/setup %}

#### 简介
每个操作系统都有自己的shell，图形界面的或者命令行的。图形界面显示就是有鼠标箭头，命令行也有相应的显示工具。<br />
shell是linux的外壳，负责外界与linux内核的交互；linux常用的内核有sh,bash,csh等，通过以下命令可以查看mac下的shell类型
```shell
cat /etc/shells
```
通过以下命令查看shell的类型
```shell
echo $SHELL
```

##### shell脚本
小程序堆积成大程序，要养成写脚本的习惯
```shell
#/bin/bash
echo "hello world"
```
#### Check Out System Variable 
```shell
echo $HOME
```
#### Shell Tutorial

```shell
# 查看sh命令的帮助文档
man sh
```

#### Common Problem

#### ls: command not found
很可能是系统环境变量所导致的问题，解决办法
```shell
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/root/bin
```
