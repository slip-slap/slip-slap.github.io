---
layout: post
title: "C++ STL Container: Vector"
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
};
}

bool compare(const Complex& a, const Complex& b)
{
	return a.GetComplexRealPart()< b.GetComplexRealPart();
}

int main()
{
	std::vector<Complex> d_vector;
	d_vector.push_back(Complex(2,3));
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

#### Algorithm

1. Move semantics
```c++
A = std::move(B);
```

2. insert: check the *cppreference*, which explain this function well.

#### Reference
1. [moving vector](https://stackoverflow.com/questions/12613428/stl-vector-moving-all-elements-of-a-vector)
2. [vector insert](https://en.cppreference.com/w/cpp/container/vector/insert)


