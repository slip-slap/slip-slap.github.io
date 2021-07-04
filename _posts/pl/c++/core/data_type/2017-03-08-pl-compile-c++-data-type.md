---
layout: post
title: "C++: Data Type"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}

**Definition:** Void is the easiest of the data types to explain. Basically,
void means "no type". Consequentially, variables can not be defined with a type
of void.

```cpp
void value; //won't work, variables can't be defined with a void type
```

1. The function of void is the similar to zero.

#### const和指针

```
const double pi =3.14;  //pi 是常量，值不能改变
double *ptr = &pi;      //错误: ptr是一个普通指针
//但是却可以使用const指针指向非const对象
double deta = 0.0;
const double *ptr = &deta;
//为什么呢？const指针的含义是不可以通过指针改变所指向对象的值，至于指向的
//对象是不是const对象，它是不care的
```


##### reference to const

```
 const int ci = 1024;
 int &r1 = ci;
// 允许将一个const int& 绑定到一个普通的int对象上
int i =42;
const int &r2 = i;
//为什么呢？指导思想和指针是一样的。const的引用的含义是不可以通过引用改变
```



