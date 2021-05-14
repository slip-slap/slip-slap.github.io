---
layout: post
title: "C++ STL: Vector and Deque"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}


#### Vector, Deque and Array
1. Vector work exactly like array, just as we use list in python, you should use
   vector in C++;
2. Deque: double ended queue, implemened by array, support subscript operator.



#### subscript operator reload

```cpp
#include <iostream>
#include <vector>
#include <iterator>
#include <ostream>
class Complex
{
	public:
	Complex(float a, float b):real_part(a),virtual_part(b)
	{
		std::cout<<"constructor"<<std::endl;
	}

	float GetComplexRealPart() const 
	{
		return real_part;
	}
	
	private:
		float real_part;
		float virtual_part;

	friend std::ostream& operator<<(std::ostream& ostream, const Complex& obj)
	{
		ostream<<"real part: "<<obj.real_part<<"virtual part: "<<obj.virtual_part<<std::endl;
		return ostream;
	}
};

//void print_vector(const std::vector<double>& d_vector)
// you can't put a constant here
void print_vector(std::vector<Complex>& d_vector)
{
	for(std::vector<Complex>::iterator it=d_vector.begin();it!=d_vector.end();it++)
	{
		std::cout<<*it<<std::endl;
	}
}

bool compare(const Complex& a, const Complex& b)
{
	return a.GetComplexRealPart()< b.GetComplexRealPart();
}

int main()
{
	std::vector<Complex> d_vector;
	d_vector.push_back(Complex(2,3));
	d_vector.push_back(Complex(4,5));
	d_vector.push_back(Complex(1,2));
	std::cout<<"before sorted"<<std::endl;
	print_vector(d_vector);
	std::sort(d_vector.begin(), d_vector.end(), compare);
	std::cout<<"after sorted"<<std::endl;
	print_vector(d_vector);
	//std::vector<double>::iterator it = std::find(d_vector.begin(), d_vector.end(),2.58);
	//std::cout<<*it<<std::endl;
}
```


#### Two Dimensional Array

```cpp
std::vector<std::vector<int>> array_vector(5,std::vector<int> (5,0));
```


