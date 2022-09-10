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


#### Reference
1. [What is move semantics](https://stackoverflow.com/questions/3106110/what-is-move-semantics#:~:text=Move%20semantics%20is%20about%20transferring,code%20uses%20the%20value%20again.)

2. [Why C++ doesn't move](https://pspdfkit.com/blog/2019/when-cpp-doesnt-move/)

