--- 
layout: post 
title: "C++: Vim" 
keywords: [] 
description: 
category: "code" 
tags: ["c++"] 
--- 
{% include JB/setup %}
#### 内存对齐
> 书写汇编语言时,处理器给我们能处理的内存块最小单位是一个字节大小。底层是如何处理的我们并不知道。我们可以把它看成一个黑箱。C++语言是汇编语言的高级形式。
```
struct foo_1{
    char a;
    int  b;
    };
struct foo_2{
    char a;
    char b;
    int  c;
};
struct foo_3{
    char a;
    int  c;
    char b;
};
foo_1 a;
foo_2 b;
foo_3 c;
cout<< sizeof(a)<<endl;//8字节
cout<< sizeof(b)<<endl;//8字节
cout<< sizeof(c)<<endl;//12字节
```
