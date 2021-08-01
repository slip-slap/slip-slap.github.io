---
layout: post
title: "C++ GP:  Template"
keywords: []
description: "c++"
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}

#### function and class template
1. they are convenient, but don't use them, too difficult to debug.
2. It just use the compiler to generate code.

```cpp
#include <iostream>
#include <string>

template<typename T>
void my_print(T value)
{
	std::cout<<value<<"\n";
}

template<typename class_type, int N>
class array
{
	private:
		class_type m_array[N];
	public:
		int get_size() const
		{
			return N;
		}
};

int main()
{
	my_print("hello world!");
	array<int,50> my_array;
	std::cout<<my_array.get_size()<<"\n";
	std::cin.get();
}
```


#### Galois
1. C++ provides a lot of features, but we don't need to use them, it's up to
   you, based on your practice.
2. Stroustrup originally used *class* to specify types in templates to avoid
   introducing a new keyword. Some in the committee introduced a new keyword
   *typename* to resolve syntactic ambiguity, and decided to let it also be used
   to specify templated types to reduce confusion.





