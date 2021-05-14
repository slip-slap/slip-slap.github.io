---
layout: post
title: "C++ 11: Smart Pointer"
keywords: []
description: "c++"
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}


#### unique\_ptr
1. smart\_pointer is implemented to prevent memory leaks
- it overload -> operator and \* opeator
- wraps a raw pointer
- unique\_ptr is always the unique ownership of associated raw pointer.

#### A
1.  we can not create a unique\_ptr through assignment, it will cause compiler
	error.
2.  we can not copy a unique\_ptr
3. both assignment operator and copy constructor are deleted in unique\_ptr
   class.


```cpp
#include <iostream>
#include <string>
class student
{
private:
	int age;
	std::string name;
public:
	student(){}
	student(std::string name, int age){

		this->name = name;
		this->age  = age;
	}
};

int main()
{
	std::unique_ptr<student> stu1(new student("liam", 18));
	std::unique_ptr<student> stu2;
	stu2 = std::move(stu1); //stu1 turn to nullptr
}

```

