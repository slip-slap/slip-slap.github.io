---
layout: post
title: "Shell: User Management"
keywords: []
description: 
category: "PL"
tags: ["script","shell"]
---
{% include JB/setup %}

#### 为普通用户添加root权限
```shell
# 在"root ALL=(ALL) ALL"添加一行
username ALL=(All)  ALL
```

#### 1. group
```shell
# add group
groupadd docker
# user modify
usermod -aG docker $USER
```

#### 2. User
Add a new user as sudoer using command line
```shell
# this change will take effect the next time the user logs in
sudo adduser <username> sudo
```
