---
layout: post
title: "C++ OOP: Move Semantics"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---


```c++
#include<iostream>
class Student{
	public:
		Student(const char*  m_name){
			std::cout<<"create"<<std::endl;
		}
		Student(const Student& other){
			std::cout<<"copy"<<std::endl;
		}

		Student(Student&& other){
			std::cout<<"move"<<std::endl;
		}
		~Student(){
		}
};

int main()
{
	Student jenifer("noone");
	// call copy constructor, because jenifer is a left value
	Student  william = jenifer;
	// call move constructor, because Student("zhang") is a right value
	Student robert(Student("zhang"));
	std::cout<<"#################"<<std::endl;

}
```




