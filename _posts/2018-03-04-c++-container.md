---
layout: post
title: "c++ container"
keywords: ["c++", "container"]
description: "c++"
category: "c++"
tags: ["container"]
---
{% include JB/setup %}

### Intro

STL标准模板库解决了数据结构和算法的抽象问题
vector和deque的底层是对数组的封装，所以提供了对元素的快速随机访问。  
不足是，在删除元素时，付出的开销更大。  
list类型在任何位置都能快速插入和删除。访问某个元素要求遍历所设计的其他元素.
### 容器操作

<hr />
#### 构造函数

+ C c;           默认构造函数，拷贝空容器
+ C c1(c2);      构造c2的拷贝c1
+ C c(b, e);     构造c, 将迭代器b和e指定的范围内的元素拷贝到c
+ C c{a, b, c};  列表初始化c
<hr />
##### 赋值和swap

在新标准库中，容器既提供成员函数版本的swap, 也提供了非成员版本的swap.其中,非成员版本的swap在泛型编程中非常重要。

```cpp
std::vector<int> c1={1, 2, 3, 4};
std::vector<int> c2={5, 6, 7, 8};
c1.swap(c2);
std::swap(c1, c2);//推荐使用这一种，泛型编程
for(auto var:c1){
    std::cout<<var<<std::endl;
}
```

<hr />
### 容器种类
<hr />
#### string
<hr />
##### 数值转换
<hr />
##### string搜索操作
<hr />
#### vector
所有标准库容器都有支持递增运算的迭代器。也支持==和!=运算<br/>
因为vector和string的底层是array, 它的底层支持+ - < > >= <=等操作
<hr />
<font color="red">代码块1</font>

```
vector<Point2d> container1;
    Point2d p1(2,3);
	Point2d p2(3,4);
	Point2d p3(1,7);
	container1.push_back(p1);
	container1.push_back(p2);
	container1.push_back(p3);
	auto var = container1.begin();
	var = var+2;
	cout<<*var;        //Point2d 底层重载了输出运算符
```

<hr />
#### forward_list
<hr />
#### list  
sort算法需要容器有随机访问迭代器,list的容器并没有随机访问迭代器.  
因此它自定义了算法.
<font color="red">代码块2</font>

```
bool Smaller(const cv::Point2d p1,const cv::Point2d p2){
	    return atan2(p1.y,p1.x)<atan2(p2.y,p2.x);
}
std::list<cv::Point2d> list_container;
    cv::Point2d p1(2,3);
    cv::Point2d p2(3,4);
    list_container.push_back(p1);
    list_container.push_back(p2);
    list_container.sort(Smaller);
```

