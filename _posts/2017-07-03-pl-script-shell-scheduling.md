---
layout: post
title: "CLI: Time Schedule"
keywords: []
description: 
category: "linux"
tags: ["CLI"]
---
{% include JB/setup %}

#### at的访问控制
1. 如果系统中有/etc/at.allow文件，那么只有写入/etc/at.allow文件中的用户可以使用at命令，/etc/at.deny文件会被忽略
2. 如果系统中没有/etc/at.allow文件，只有/etc/at.deny文件，那么写入/etc/at.deny文件中的用户不能使用at命令。对root不起作用
3. 如果系统中这两个文件都不存在，那么只有root用户可以使用at命令

#### 常用命令
```shell
# ctrl+d表示结束任务
at now +5 minutes
at> ls
at> <EOT>
# 查看任务列表
atq
# 查看任务详细信息,后面的数字表示对应哪一条消息的内容
at -c 1
```
