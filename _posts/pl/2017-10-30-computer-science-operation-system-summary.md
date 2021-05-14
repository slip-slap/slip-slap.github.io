---
layout: post
title: "OS: Summary"
keywords: []
description: 
category: "CS"
tags: ["summary"]
---
{% include JB/setup %}

####
隐藏文件在finder不可见
```shell
defaults write com.apple.finder AppleShowAllFiles -bool false
```
隐藏文件在finder中可见
```shell
defaults write com.apple.finder AppleShowAllFiles -bool true
```
在finder的偏好设置中，可以选择在桌面显示或者隐藏，硬盘，外置磁盘等

#### The difference between Linux and BSD

+ Linux is just the Linux Kernel. A typical Linux distributions are made of many pieces of software.
That's why linux is sometimes called GNU/Linux. There are many linux distributions, like Redhat,Ubuntu,Debian,
if you want to install Linux, you will need to choose among the linux distributions first


+ BSDs are both a kernel and an operating system. For example, FreeBSD provides both the BSD kernel and the operating system. 
+ Both of Linux and BSDs are compilant with POSIX standard.

### Mac OS X, Linux, and BSD

+ Mac OS X distribution is based on BSD kernel and BSD operationg system. The command line in the Mac OS X is not as powerful as GNU/linux.
+ Although both of them are compilant with POSIX standard, the grammar are little different. GNU/linux seems more simple and powerfull. so
you should replace Mac OS X utilities with GNU core utilities.


#### replace MacOS command wich GNU version

```shell
# contains the most essential UNIX commands, such as ls, cat
brew install coreutils
```


#### reference
[Install and Use GNU command on MacOS](https://www.topbug.net/blog/2013/04/14/install-and-use-gnu-command-line-tools-in-mac-os-x/)
