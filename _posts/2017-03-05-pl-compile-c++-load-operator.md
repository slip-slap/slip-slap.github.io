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
参数1: 非常量ostream对象的引用,非常量的原因是向流写入内容会改变其状态  
                               引用的原因是因为我们无法直接复制一个ostream对象  
参数2: 常量的引用, 引用是因为避免复制实参  
                   常量是因为打印不会改变对象的内容  
class Worker{
	public:
	    int age;
	    std::string name;
	public:
	    Worker(): age(18),name("hello"){}
};
std::ostream &operator<<(std::ostream &os, const Worker &worker){
	    os<<worker.age<<" "<<worker.name;
	    return os;
}
//call
Worker worker;
std::cout<<worker;
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
