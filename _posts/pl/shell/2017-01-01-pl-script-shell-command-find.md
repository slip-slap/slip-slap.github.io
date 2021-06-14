---
layout: post
title: "Shell: Find"
keywords: []
description: ""
category: "PL"
tags: ["shell","script"]
---
{% include JB/setup %}


#### grammar

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


#### Remark
I am confused to remember these long commands for a long time, since I am unable
to analyze english grammar. Actually, the rule is pretty simple, *find path*
command tell us where to find, which is the most important thing in this
command, you should *find in somewhere*. Furthermore, we want to specify
something we want, such as file name, file type etc., and they are treat as the
parameters.


