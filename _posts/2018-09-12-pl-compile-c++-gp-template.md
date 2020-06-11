---
layout: post
title: "C++ GP:  Template"
keywords: []
description: "c++"
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}

#### function template


define
```
template <typename price> bool isCheaper(price p1,price p2){
	    return p1<p2;
        }
```
instantiation
```
//函数模板能自己推断参数类型
compare(2.0,12.0);
```
---
<hr />
#### class template  
类模板用来生成类的蓝图，与函数模板不同，编译器不能为类模板推断模板参数类型



