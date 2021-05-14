--- 
layout: post 
title: "Make: Rules" 
keywords: [] 
description: 
category: "PL"
tags: ["script","make"] 
--- 
{% include JB/setup %}


#### Make 
make主要用来构建c语言的项目，实际上，任何主要某个文件有变化，就要重新构建项目，都可以用make构建

#### 语法
```shell
target [target...] : [dependent ....]
    [command ...]
```


#### Suffix
1. Make uses a special target, named **.SUFFIXES** to allow you to define your
   own suffixed
