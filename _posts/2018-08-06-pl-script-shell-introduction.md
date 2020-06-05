--- 
layout: post 
title: "Shell: Introduction" 
keywords: [] 
description: 
category: "PL"
tags: ["shell","script"] 
--- 
{% include JB/setup %}

####
1. A shell script is a computer program designed to be run by the Unix/Linux
   shell which could be one of the following:
- Bourne Shell
- C Shell
- The GNU Bourne-Again Shell
2. A shell is a command-line interpreter and typical operations performed by
   shell scripts include file manipulation, program execution, and printing
   text.
3. Shell Scripts: just a list of commands



```shell
cat /etc/shells
```
通过以下命令查看shell的类型
```shell
echo $SHELL
```

```shell
#/bin/bash
echo "hello world"
```
#### Check Out System Variable 
```shell
echo $HOME
```

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
