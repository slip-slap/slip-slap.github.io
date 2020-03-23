---
layout: post
title: "Linux: Find"
keywords: []
description: ""
category: "linux"
tags: []
---
{% include JB/setup %}

#### what does the command do ? 
在指定目录下查找文件。如果使用该命令时，不设置任何参数，则find命令将在当前目录下查找子目录与文件。并且将查到的字目录和文件全部进行显示

#### 语法

find \[参数\]

the following is some examle:

1. find . 列出当前目录及子目录下所有文件和文件夹
2. find / -cmin -15 查找最近15分钟更新的文件
3. -exec

```shell
# -exec参数必须以\; 结尾
# 查找当前目录下文件名为test的文件，并找到满足"xxx-xxxx-xxxx"规律所在行内容
find "test" -exec grep -in  "^[0-9]\{3\}-[0-9]\{4\}" test \;
```

#### replace the command with GNU version

```shell
brew install findutils
```
