---
layout: post
title: "C++: Reload Operator"
keywords: []
description: "c++"
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}


 重载的运算符不过是有特殊名字的函数
<h4>重载下标运算符</h4>

```
[]   下标操作符必须是成员函数
```

<h4>重载输出运算符</h4>

```
<<     不能是成员函数
```


  
<h4>重载输入运算符</h4>

```
>>
参数1: 读取流的引用;
参数2: 非常量对象的引用;
std::istream &operator>>(std::istream &is,Worker &worker){
	    is>>worker.age>>worker.name;
	    return is;
}
//call
    Worker worker;
    std::cout<<worker;
    std::cin>>worker;
    std::cout<<worker;
```
