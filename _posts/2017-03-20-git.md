---
layout: post
title: "CLI: Git"
keywords: []
description: 
category: "linux"
tags: ["CLI"]
---
{% include JB/setup %}

查看HEAD
```shell
cat .git/HEAD
```
<hr />
git中提交时，会保存一个提交(commit)对象，该对象包含一个指向暂存内容快照的指针。包含本次提交的作者等相关信息。包含零个或多个指向该提交对象的父对象指针。首次提交是没有直接祖先的。

