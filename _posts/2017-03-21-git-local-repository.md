---
layout: post
title: "Git: Local Management"
keywords: []
description: "git"
category: "linux"
tags: ["CLI"]
---
{% include JB/setup %}


在git里，一切皆为分支。
git是世界上最先进的分布式控制系统。CVS和SVN都是集中式的版本控制系统。


所有的版本控制系统，其实只能跟踪文件文件的改动，比如txt文件或者程序代码。
版本控制系统可以告诉你每次的改动。但对于图片，视频等二进制文件，版本控制系统是无能为力的。


git具有很多方便的功能，以分支为例。SVN也有分支结构，但是特别慢，就成了摆设
git非常快。


git版本库即为仓库，repository，就是一个目录，目录里面的所有文件都可以被
git管理。


git由三个概念，分别是工作区，版本库和暂存区，add命令把文件由工作区
添加到stage,即暂存区，commit命令把暂存区合并到版本库


* git init 把目录变成git可以管理的仓库，生成.git文件，跟踪管理版本库
* git add . 把当前文件夹得文件添加到仓库
* git commit -m "commit" 把文件提交到仓库
* git status 时刻掌握仓库当前的状态
* git diff 查看工作区和版本库的差别
* git log  显示总最近到最远的提交日志
* git reflog 记录你的每一次命令

