---
layout: post
title: "CLI: Git Remote Repository"
keywords: []
description: 
category: "linux"
tags: ["CLI"]
---
{% include JB/setup %}

git支持多种协议，包括https, 但是通过ssh支持的原生git协议速度最快。


* 添加远程库：git remote add origin git@github.com:slip-slap/slip-slap.github.io.git
远程库的名字叫做origin，也可以改成别的，但是origin这个名字一看就知道是远程库
* 把本地库的所有内容推送到远程库上 git push origin master


