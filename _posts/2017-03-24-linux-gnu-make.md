--- 
layout: post 
title: "GNU: make" 
keywords: [] 
description: 
category: "linux"
tags: ["gnu"] 
--- 
{% include JB/setup %}


#### Make 
make主要用来构建c语言的项目，实际上，任何主要某个文件有变化，就要重新构建项目，都可以用make构建

#### 语法
```shell
<target> : <prerequisites>
[tab] <commands>
```
