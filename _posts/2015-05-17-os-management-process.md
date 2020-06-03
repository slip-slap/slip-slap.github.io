---
layout: post
title: "Management: Process"
keywords: []
description: 
category: "OS"
tags: ["MNG"]
---
{% include JB/setup %}

#### Kill 
用来终止指定的进程，终止前台的进程可以使用Ctrl+c, 终止后台的进程必须使用kill命令

#### 介绍
ps类似于命令行界面的任务管理器，查看进程状态
<hr />
#### ps
ps命令默认显示4列信息<br />
+ PID: process ID 
+ PPID: parent process ID 程序的父进程号
+ TTY: 命令所运行的位置(终端)
+ TIME: 运行着的该命令所占用的CPU时间
+ CMD: 该进程所运行的命令
<hr />

#### 参数
1. -u 根据用户过滤进程，ps -u huiyaozhang 查看用户huiyaozhang的进程
2. -a 显示一个终端所有进程
3. -x 显示没有控制终端的进程
4. -e 显示所有进程和-A作用一致4. -e 显示所有进程和-A作用一致4. -e 显示所有进程和-A作用一致4. -e 显示所有进程和-A作用一致
#### 常用命令
```shell
# 其中进程id为1的表示所有进程的父进程，在centos7中为systemd
# 查看系统中所有进程
# 该命令显示的信息较多，其中STAT表示进程状态。常见的状态有
# R: 运行
# S: 睡眠
# T: 停止
# s: 包含子进程
# +: 位于后台
# START表示当前进程启动的时间，TIME表示当前进程耗费的CPU资源
ps aux
```

<hr />
#### pstree
```shell
# 显示每个进程信息
pstree -p
# 显示进程用户
pstree -u
```
