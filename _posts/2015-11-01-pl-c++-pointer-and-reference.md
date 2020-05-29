--- 
layout: post 
title: "C++: Pointer and Reference" 
keywords: [] 
description: 
category: "PL"
tags: ["c++"] 
--- 
{% include JB/setup %}

#### 语言类型
+ c++容忍隐士的类型转换，所以是一种种弱类型语言
+ c++编译时进行类型检查，程序运行时不能改变其结构，所以是静态语言


#### Arithmetic
1. p++ 
2. p--
3. p+1

```cpp
#include <iostream>

int main(){
    int a[5]={1,2,2,1,9};
    int *p = a;
    std::cout<<p++<<std::endl;
    std::cout<<a+1<<std::endl;
    std::cout<<*(a+1)<<std::endl;
}
```

#### Problems Using Pointers
1. uninitialized ptr.
2. memory leak.
3. dangling pointer.


#### Galois
1. Just don't treat pointer a big deal.
2. It's just a kind of variable, no big deal, very simple.


