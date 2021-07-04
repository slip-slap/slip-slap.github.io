---
layout: post
title: "C++: Overload"
keywords: []
description: "c++"
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}



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

	friend 
		std::ostream& operator<<(std::ostream & out, const complex_number &b);
};

// std::cout<<c1;
/*
 * how to write this function ? according to this signature std::cout<<c1;
 * std::cout is the first parameter.
 * c1 is the second parameter.
 * then we write the function
 * */

std::ostream& operator<<(std::ostream& out, const complex_number &b)
{
    out<<b.actual_part<<"+"<<b.virtual_part<<"i"<<std::endl;
	return out;
}
int main()
{
	complex_number c1(2,3);
	std::cout<<c1;
	operator<<(std::cout,c1);
	return 0;
}
```


#### Galois
1. this teacher is a master, I should learn from him how to learn.
