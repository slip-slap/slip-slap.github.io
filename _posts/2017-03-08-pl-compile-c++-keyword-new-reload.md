---
layout: post
title: "C++ Keyword: New"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}

####
1. the new operator calls a function to perform the requisite memory allocation,
   you can rewrite and overwrite this function to change its behavior.

#### Rule
1. If you apply address in heap, you must return

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

#### I
1. New allocate memory in heap


```cpp
#include <iostream>
#include <memory>


void* operator new (size_t size)
{
    std::cout<<"allocating "<<size<< " bytes"<< "\n";

    return malloc(size);
}
void operator delete[] (void* memory) noexcept
{
    std::cout<<"int freeing "<< " bytes"<< "\n";
    free(memory);
}

void operator delete (void* memory) noexcept
{
    std::cout<<"object freeing "<< " bytes"<< "\n";
    free(memory);
}

struct student
{
    int age;
    std::string name;
};

int main()
{
    struct student * zhang = new struct student;
    zhang->age = 3;
    zhang->name = "zhangsan";

    delete zhang;

    int* age = new int[50];
    delete[] age;

    std::cin.get();
}

```


#### 2. Parentheses after the type name with new
1. Sometimes the memory returned by the new operator will be initialized,
   sometimes it won't.
- in C++ 1988, there are two types of initilization: zero and default.
- in C++ 2003, there are three types of initilization

```cpp
int* test = new int; //the value of *test could be any.
int* test = new int(); // *test will have zero value.


// I make the test, these two things are the same;
int main(){
	int* a = new int;
	int* b = new int();
	std:: cout<<"a: "<<*a<<std::endl;
	std:: cout<<"b: "<<*b<<std::endl;
}

```



#### Galois
1. When keyword new is used, the return value is always **address**;


#### reference
1. [cpp rererence](https://en.cppreference.com/w/cpp/memory/new/operator_delete)
2. [new operator and operator new](https://stackoverflow.com/questions/1885849/difference-between-new-operator-and-operator-new)
