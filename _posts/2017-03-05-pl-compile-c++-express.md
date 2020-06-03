--- 
layout: post 
title: "C++: Expression" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}


#### 类型转换
##### 隐士转换
C++语言不会直接将两个不同类型的值相加，而是先根据类型转换的规则将运算的
类型统一后，再求值。
```
int ival = 3.541 + 3;
// 1 3转换成double型，结果类型为double
// 2 初始化过程中，初始化对象的类型无法改变，初始值被转化为该对象的类型

```
##### 显示转换
表达式 cast-name<type>(expression)<br/>
type: 转换的目标类型，expression要转换的值<br/>
cast-name是static, dynamic, const, reinterpret中的一种
