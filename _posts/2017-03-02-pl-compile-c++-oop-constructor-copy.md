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


#### reference
1. [copy constructor](https://www.geeksforgeeks.org/copy-constructor-in-cpp/)

