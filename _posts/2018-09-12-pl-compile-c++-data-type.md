---
layout: post
title: "C++: Data Type"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}



### intro

数据的初始化分为两种: <br /> 
直接初始化: 使用assignment operator<br />  
复制初始化: 使用(),将初始化值放在圆括号内。<br />  
对于类类型对象，直接初始化直接调用与实参匹配的构造函数。复制初始化
调用复制构造函数，然后使用复制构造函数将临时对象复制到正在创建的对象。
1 引用数据类型是一种复合类型，通过在变量名前添加&来定义。  



#### void\*

void\* 一种特殊的指针类型，用于存放任意对象的地址。 

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
//所引用对象的值，至于引用对象是不是const的它不care
//const的意思是，我不允许所引用的对象通过我改变它的值。
//如果你能通过改变所引用的值，你随便，你开心就好
```




