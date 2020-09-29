---
layout: post
title: "C++: Reload Operator"
keywords: []
description: "c++"
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}

#### A
1. operoator overload just a special function name;


```cpp
#include <iostream>

class complex_number
{

	private:
		int actual_part; 
        int virtual_part;

    public:
		complex_number()
		{}

		complex_number(int actual_part, int virtual_part)
		{
			this->actual_part = actual_part;
			this->virtual_part = virtual_part;
		}

		void print()
		{
			std::cout<<actual_part<<"+"<<virtual_part<<"i"<<std::endl;
		}
friend complex_number operator+(complex_number a, complex_number b);
};

complex_number operator+(complex_number a, complex_number b)
{
	complex_number c;
	c.actual_part = a.actual_part + b.actual_part;
	c.virtual_part= a.virtual_part + b.virtual_part;
	return c;
}


int main()
{
	complex_number c1(2,3);
	complex_number c2(7,4);
	complex_number c3 = c1 + c2;
	complex_number c4 = operator+(c1,c2);
	return 0;
}
```
