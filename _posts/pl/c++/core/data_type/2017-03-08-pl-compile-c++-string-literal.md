--- 
layout: post 
title: "C++ Type: String literal" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}

#### String literal
The string literal is stored in the read-only part of memory by most of the compilers. The C
and C++ standards say that string literals have static storage duration, any attempt at modifying
them gives undefined behaviour.




#### string and string literal 
1. the c\_str() function returns the value of string class.
```cpp
#include <iostream>
#include <string>
int main(){
	std::string name="liam";
	std::cout<<name.c_str();
}
```


#### Reference
1. [char array and char pointer](https://www.geeksforgeeks.org/whats-difference-between-char-s-and-char-s-in-c/)

