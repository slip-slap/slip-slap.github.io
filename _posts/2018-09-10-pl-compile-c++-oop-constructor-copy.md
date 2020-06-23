---
layout: post
title: "C++ OOP: Copy Constructor"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---

#### Introduction
1. When we care about copy constructor, during argument passing,
   because argument passing will call copy constructor.


```cpp
#include<iostream>

class student
{
	public:
		student()
		{
			std::cout<<"call constructor"<<std::endl;
		}
		student(const student& s)
		{
			std::cout<<"call copy constructor"<<std::endl;
		}
};

void get_student_name(student s){}
int main()
{
	student s1;
	get_student_name(s1);
}
```

