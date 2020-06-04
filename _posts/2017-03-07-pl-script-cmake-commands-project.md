--- 
layout: post 
title: "Commands: Project Commands" 
keywords: [] 
description: 
category: "PL"
tags: ["cmake","script"] 
--- 
{% include JB/setup %}

#### These commands are available only in CMake projects

[官方文档](https://cmake.org/cmake/help/v3.0/command/target_link_libraries.html)
```
#使用这个语法的时候，target必须通过add_executable()或者add_library()创建
target_link_libraries(<target> [item])
```
