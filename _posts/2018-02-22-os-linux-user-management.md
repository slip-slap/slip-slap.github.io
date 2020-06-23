---
layout: post
title: "Linux: User Management"
keywords: []
description: 
category: "OS"
tags: []
---
{% include JB/setup %}
#### 说明
该文件只能使用visudo命令打开编辑，如果有语法错误，则不能保存
<hr />

#### 为普通用户添加root权限
```shell
# 在"root ALL=(ALL) ALL"添加一行
username ALL=(All)  ALL
```

#### 组

#### 增删
```shell
# 增加组
groupadd docker
```
<hr />

#### 用户

##### 修改用户组
```shell
# user modify
usermod -aG docker $USER
```
