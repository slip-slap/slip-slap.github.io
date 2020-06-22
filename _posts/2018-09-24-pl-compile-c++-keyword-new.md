---
layout: post
title: "C++ Keyword: New"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}

#### Rule
1. If you apple address in heap, you must return


```cpp
#include<iostream>
#include <memory>

class student
{
	private:
		int* a =new int[20];

	public:
		student()
		{
			std::cout<<"create"<<std::endl;
		}
		~student()
		{
			std::cout<<"destroy"<<std::endl;
		}
};



int main()
{
	student* a = new student();// will not call ~student even the program end.
	student b; //student will be called
	//std::unique_ptr<student> b(new student());
}


```
