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
int main()
{
	std::vector<char> char_vector;
	char_vector.push_back(')');
	std::cout<<char_vector[0]<<std::endl;
}
```


#### Two Dimensional Array

```cpp
std::vector<std::vector<int>> array_vector(5,std::vector<int> (5,0));
```


