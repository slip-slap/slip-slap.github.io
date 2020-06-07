---
layout: post
title: "Git:  Branch"
keywords: []
description: 
category: "OS" 
tags: []
---
{% include JB/setup %}

#### 操作
+ git branch                 display branch
+ git checkout master        switch branch
+ git branch develop         create branch

```shell
git checkout -b develop
# 相当于执行下面两条命令
git branch develop
git checkout develop
```
+ git branch -d develop      删除分支 删除名字为develop的分支

#### exception
```shell
fatal: this operation must be run in a work tree
# 不在工作目录，可能在.git或者别的目录，切换到工作目录即可
```
