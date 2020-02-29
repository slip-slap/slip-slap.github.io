---
layout: post
title: "C++:  Template"
keywords: ["c++", "template"]
description: "c++"
category: "code"
tags: ["c++"]
---
{% include JB/setup %}

#### intro
OOP和范型编程都能处理在编写程序时不知道类型的情况。不同之处在于
OOP能处理类型在程序运行之前都未知的情况，范型编程中，编译时就能获知类型。
<hr />
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



