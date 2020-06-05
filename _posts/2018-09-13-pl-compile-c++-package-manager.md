--- 
layout: post 
title: "C++: Package Manager" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}


#### Introduction
Here is the list **conan, cpm, dds, pacm, hunter, vcpkg**



#### 1.1 Brew 
the missing package manager for macos, 和centos下的yumhe ubuntu下的apt-get类似
1. brew的安装目录在/usr/local/Cellar
2. 配置目录在/usr/local/etc
3. 命令目录在/usr/local/bin

#### 使用
1. brew install pyenv 
- it will put pyenv-related file under **/usr/local/Cellar** directory.
- at the same time create symlink of command under **/path/to/pyenv/bin/pyenv**,
  and put the symlink under **/usr/local/bin**, which is a system default path.

```shell
ls -l /usr/local/bin/pyenv
lrwxr-xr-x 1 kismet admin 32 Jun  5 10:40 /usr/local/bin/pyenv ->
../Cellar/pyenv/1.2.18/bin/pyenv
```

2. brew upgrade boost
3. brew info boost  查看boost相关信息
4. brew link
- this is just a fancy version of **ln -s**
- you install library by brew install, how could you get the system find them
  and use them, create symlink under **/usr/local/lib** directory

```shell
ls -l | grep opencv | head -5
lrwxr-xr-x   1 kismet admin   37 Jun  4 21:10 libade.a ->
../Cellar/opencv/4.3.0_4/lib/libade.a
lrwxr-xr-x   1 kismet admin   48 Jun  4 21:10 libcorrespondence.a ->
../Cellar/opencv/4.3.0_4/lib/libcorrespondence.a
lrwxr-xr-x   1 kismet admin   40 Jun  4 21:10 libippicv.a ->
../Cellar/opencv/4.3.0_4/lib/libippicv.a
lrwxr-xr-x   1 kismet admin   39 Jun  4 21:10 libippiw.a ->
../Cellar/opencv/4.3.0_4/lib/libippiw.a
lrwxr-xr-x   1 kismet admin   43 Jun  4 21:10 libittnotify.a ->
../Cellar/opencv/4.3.0_4/lib/libittnotify.a
```

#### 1.2 Port 

