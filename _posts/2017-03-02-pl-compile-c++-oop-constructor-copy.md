---
layout: post
title: "C++ OOP: Copy Constructor"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---


#### 1. When to use?
1. Copy constructor is called when a new object is created from an existing object, as a copy of the
existing object
- pass an object to an argument of a function need copy constructor
2. Assignment operator is called when an already initialized object is assigned a new value from
   another existing object.


#### 2. Why argument to a copy constructor must be passed as a reference?
A copy constructor is called when an object is passed by value. Copy constructor itself is a
function. So if we pass an argument by value in a copy constructor, a call to copy constructor would
be make to call copy constructor which becomes a non-terminating chain of calls. Therefore compiler
doesn't allow parameters to be passed by value.

#### 3. Why argument to a copy constructor should be const?
1. one reason for passing const reference is, we should use const in c++ wherever possible so that
   objects are not accidentally modified.
2. Compiler created temporary objects can not be bound to non-const references.

```cpp
#include<iostream>
class Student{
	public:
		Student(const char*  m_name){
			std::cout<<"create"<<std::endl;
		}
		Student(const Student& other){
			std::cout<<"copy"<<std::endl;
		}
		~Student(){
		}
};

int main()
{
	// the compiler will create a temporary object
	// then call the copy constructor, but, a temporarty can't be passed to a non-const argument
	// so we have to modify the argument to copy constructor with const keyword.
	Student robert=Student("zhang");
}
```

#### 4. When is user-defined conpy constructor needed?
1. if we don't define our own copy constructor, the C++ compiler creates a default copy constructor
	for each class which does a member-wise copy between objects
2. The compiler created copy constructor works fine in general. We need to define our own copy
   constructor only if an object has pointers or any runtime allocaton of resource like file handle,
   a network connection.


#### Example
1. standard library use copy constructor
- when you try to push an object into a list container, it call the object's
  copy constructor.
- for a container, it also allocate memory on the heap.
- the code line.addDote(dot1) would allocate new memory, and now the new memory
  is control by the container.




```cpp
#include <iostream>
#include <string>
#include <list>

void* operator new(size_t size){
	std::cout<<"allocate memory"<<std::endl;
	return std::malloc(size);
}

class Dot{
	public:
		Dot(){
			std::cout<<"new dot object"<<std::endl;
		}
		Dot(const Dot& dot){
			std::cout<<"copy constructor"<<std::endl;
			this->a = dot.a;
			this->b = 1000;

		}
	int a,b;
	~Dot(){
		std::cout<<"destroy"<<std::endl;
	}
};

class Line{
	public:
	std::list<Dot> m_line;
	void addDot(Dot& dot){
		m_line.push_back(dot);
	}
};

int main(){
	Line line;
	{
		Dot dot1;
		dot1.a = 3;dot1.b = 4;
		std::cout<<"________________"<<std::endl;
		line.addDot(dot1);
		std::cout<<"________________"<<std::endl;
		std::cout<<"address: "<<&dot1<<std::endl;
	}
	for(std::list<Dot>::iterator itr =line.m_line.begin();itr!=line.m_line.end();itr++){
		std::cout<<"address: "<<&itr<<std::endl;
		std::cout<<"a= "<<(*itr).a <<", b= "<<(*itr).b<<std::endl;
	}

}
```


#### reference
1. [copy constructor](https://www.geeksforgeeks.org/copy-constructor-in-cpp/)

