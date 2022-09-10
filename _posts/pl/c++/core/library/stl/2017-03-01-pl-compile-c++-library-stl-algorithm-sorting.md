---
layout: post
title: "C++ STL: Sorting Operations"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}

The following is on *cppreference*.

**comparison function object (i.e. an object that satisfies the requirements of
Compare) which returns true if the first argument is less than (i.e. is
ordered before) the second.**
- If the comparsion function that you define doesn't follow this rule: the first
  argument is less than the second, it will cause undefined behavior.  You
  comparision function includes less than or equal, for example.

##### sort()

```cpp
struct my_point{
	public:
	    my_point(int x, int y){
        this->x=x;
        this->y=y;
	    }
	    double x;
	    double y;
	   /*
	   这里重载操作符的时候有两点要说清楚
	   1 属于对象的成员函数都存在隐藏的this指针，对于该函数而言，x属于某个对象的。
	   2 应该是语法默认规定，类内重载<, 函数为const类型， 参数为const类型
	    否则会报如下错误
	    error: invalid operands to binary expression ('const my_point' and 'const my_point')
	    bool operator()(const _T1& __x, const _T1& __y) const {return __x < __y;}
	   */
	    bool operator<(const my_point &my) const {
            return x<my.x;
	    }
		//第二种比较方法
		bool is_compare(my_point p1, my_point p2){
			    return p1.x<p2.x;
		}
		//------------------------------------------------------
		//-------------------------------------------------------
		list<my_point> container;
		my_point p1(1,2);
		my_point p2(3,4);
		my_point p3(2,5);
		container.push_back(p1);
		container.push_back(p2);
		container.push_back(p3);
		container.sort();
      //container.sort(is_compare)
};
```



#### Reference
1. [cpp sort](https://en.cppreference.com/w/cpp/algorithm/sort)

