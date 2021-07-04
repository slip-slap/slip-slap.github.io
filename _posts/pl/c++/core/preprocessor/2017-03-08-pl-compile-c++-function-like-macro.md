--- 
layout: post 
title: "C++: Function-like Macros" 
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



#### Reference
1. [Function-like macros](https://gcc.gnu.org/onlinedocs/cpp/Macro-Arguments.html)
