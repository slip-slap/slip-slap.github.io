---
layout: post
title: "C++ STL: Container"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}

### Intro
list类型在任何位置都能快速插入和删除。访问某个元素要求遍历所设计的其他元素.

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

#### vector

#### forward_list

#### list  
sort算法需要容器有随机访问迭代器,list的容器并没有随机访问迭代器.  
因此它自定义了算法.

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

