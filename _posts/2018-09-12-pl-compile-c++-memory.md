--- 
layout: post 
title: "C++: Memory" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}
### intro
#### 自动分配
全局对象在程序启动时分配，程序结束时销毁。<br/>
局部对象，进入其定义所在的程序时被创建，离开时销毁<br/>
局部static对象在第一次使用前分配，程序结束时销毁<br/>
<hr />
#### 动态分配
除了静态内存和栈内存，每个程序还拥有一个内存池。称为自由空间，free store或堆heap
动态分配的对象的生存期与他们在哪里创建是无关的，只有当显示地被释放时，对象才会被销毁
<hr />

### 智能指针
智能指针产生的原因是对象在销毁时，会调用它的析构函数。
<hr />
#### shared_ptr
<hr />
#### 直接管理内存

