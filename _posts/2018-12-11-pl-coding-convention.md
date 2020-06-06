--- 
layout: post 
title: "PL: Coding Convention" 
keywords: [] 
description: 
category: "PL"
tags: []
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


如果没有继承，类只有两种用户，private和public。protected是基于继承新添加的属性。
