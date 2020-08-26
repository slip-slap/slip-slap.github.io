---
layout: post
title: "OS: Summary"
keywords: []
description: 
category: "OS"
tags: ["summary"]
---
{% include JB/setup %}

#### intro
学习mac，需要知道linux的设计哲学，Linux本质上是一个用户服务器模式，tmux借鉴了linux的设计模式，也是一个c/s架构的模式。<br />
在linux中，最重要的概念是用户和组

<hr />
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


在linux中，一切皆文件。

打包和压缩，是两个概念  
打包，把许多文件变成一个文件；压缩，把大文件变小。

touch filename touch新建的文件没有执行权限，需要赋予相应的执行权限



#### replace MacOS command wich GNU version

```shell
# contains the most essential UNIX commands, such as ls, cat
brew install coreutils
```


#### reference
[Install and Use GNU command on MacOS](https://www.topbug.net/blog/2013/04/14/install-and-use-gnu-command-line-tools-in-mac-os-x/)
