--- 
layout: post 
title: "C++: Macro" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}


宏: 就是指令的集合
```
#define PRINT(A) std::cout<<"this is output: "<<#A<<std::endl
PRINT("hello");
```