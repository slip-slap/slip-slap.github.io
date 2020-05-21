--- 
layout: post 
title: "C++: Code Normal" 
keywords: [] 
description: 
category: "PL"
tags: ["c++"] 
--- 
{% include JB/setup %}


如下代码:
```
while(first!=last){
	 ++first
	}
```
left-inclusive interval,左闭合空间的意义:  
当first与last相等时，迭代器范围为空  
当first与last不相等时，迭代器范围内至少有一个元素，而且first指向该区间的第一个元素，通过若干次自增运算可以使first不断增大，知道first==last为止。  


***
和表达式相比，函数比表达式好理解，容易维护，重用性好
缺点就是，效率差，调用函数之前需要保存寄存器，复制实参，程序跳转等操作。

封装是一项将低层次的元素组合起来形成新的高层次实体的技术，函数是封装的一种形式 ，函数所执行的细节行为被疯转在函数本身这个实体中。同样类，也是一个封装的实体。 和函数相比，类是一个复杂的概念。
函数体内的局部变量对外是不可见的，就像类的私有成员。
如果没有继承，类只有两种用户，private和public。protected是基于继承新添加的属性。