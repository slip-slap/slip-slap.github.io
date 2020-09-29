--- 
layout: post 
title: "C++: Macro" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}


```
#define PRINT(A) std::cout<<"this is output: "<<#A<<std::endl
PRINT("hello");
```
