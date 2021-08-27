---
layout: post
title: "C++ STL: Algorithm"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}


#### Terminology
1. predicates: To increase their flexibility and power, several algorithms allow
   the user to pass user-defined operations, which they call internally. These
   operations might be ordinary functions or function objects. If these
   functions return a Boollean value, they are called predicates.



##### find
find(beg, end, val)<br />
return 返回一个迭代器，指向输入序列中第一个等于val的元素。<br />
find_if(beg, end, unaryPred)<br />
return 返回一个迭代器， 指向第一个满足unaryPred的元素 <br />
parameter 因为谓词的参数为容器的元素类型，因此，谓词不能是成员函数

```cpp,monokai
//谓词
bool my_minus(int a){
	    return (a-1) == 2;
}
//主调函数
list<int> container;
container.push_back(3);
container.push_back(8);
auto var = find_if(container.begin(), container.end(),my_minus);
cout<<*var;
```

#### 写容器元素的算法

##### fill_n

```cpp
std::vector<int> container;
std::back_insert_iterator<std::vector<int>> itr=std::back_inserter(container);
std::fill_n(itr,10,0);//算法需要的只是迭代器，有了迭代器它就很开心了
```

#### 最小值和最大值  
##### min(val1, val2, comp)  
参数和返回类型都是const的引用，意味着对象不会被拷贝

```
bool is_true(int a,int b){
	    return 0;
}
std::cout<<max(3,5,is_true);
```

minmax_element(beg, end, comp)<br />
param beg和end都是迭代器<br />
      comp是自定义的比较函数，该比较函数不能是一个成员函数。为什么
	  我的理解是，成员函数默认有一个this指针作为参数。而该比较函数的
	  参数仅有两个，是两个迭代器所指向的对象。
return 返回值是一个pair容器，成员为指向对象的指针。

```
bool is_smaller(Point2d p1,Point2d p2){
	    return p1.x<p2.x;
}
list<Point2d> container;
Point2d p1( 0,-1);
Point2d p11(1.5,0);
Point2d p2( 1, 1);
Point2d p3( 0, 1);
Point2d p4(-1, 1);
container.push_back(p1);
container.push_back(p11);
container.push_back(p2);
container.push_back(p3);
container.push_back(p4);
pair<list<Point2d>::iterator,list<Point2d>::iterator> var=minmax_element(container.begin(),container.end(),is_smaller);
std::cout<<*(var.first)<<*(var.second);    
//简单写法
auto copy_var=minmax_element(container.begin(),container.end(),is_smaller);
```
