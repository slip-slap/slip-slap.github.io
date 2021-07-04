--- 
layout: post 
title: "C++: Pointer" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}


#### Pointer
Pointer is just an allocated  address of an object, and it has  lifecycle:
uninitialized pointer, dangling pointer. 

- uninitialized pointer is just as the name suggests which means the operation
  system hasn't allocate an address to it.
- Dangling pointer are pointers that do not point to a valid object of the
  appropriate type. Dangling pointers arise during object destruction, when an
  object that has an incoming reference is deleted or deallocated, without
  modifying the value of the pointer, so that the pointer still points to the
  memory location of the deallocated memory. The system may reallocated the
  previously freed memory, and if the program then dereference the dangling
  pointer, unpredictable behavior may occurs.



#### 1. Pointer Operation 
1. p++ 
2. p--
3. p+1

```cpp
#include <iostream>
int main(){
    int a[5]={1,2,2,1,9};
    int *p = a;
    std::cout<<p++<<std::endl;
    std::cout<<a+1<<std::endl;
    std::cout<<*(a+1)<<std::endl;
}
```

#### 2. Void Pointer
A void pointer is a pointer that has no associated data type with it. 
- a void pointer can hold address of any data type can be typecasted to any type.
- malloc() and calloc() return void* type and this allows these functions to be used to allocate
  memory of any data type.

```cpp

#include<iostream>
#include<vector>

void print_value(int value){
	std::cout<<"print value is " << value<< std::endl;
}

void container_iterator(std::vector<int> & my_vector, void(*func)(int a)){
	for(auto element: my_vector){
		func(element);
	}
}

int main()
{
	std::vector<int> a ={1,4,2,3};
	container_iterator(a, print_value);
}

```

####  Char* and char[]
1. Char* and char[] are different types 

```cpp
char message[]="hello world!";
```
- defines an array whose memeter lives in current scope's stack space

```cpp
char* messag="hello world!"; // not allowed
const char* messag="hello world!";
```
- defines a pointer that lives in current scope's stack space.
- but that reference memory is someelse where.
- Because the data is not stored in the current scope's stack space, it's
  unspecified where it will be stored and should not be modified.



#### Function pointer
I want to make function pointer void(func*) make sense. 
- integer pointer int* p
- void pointer void*
- void funtion pointer void(func*)(std::string a)


#### Galois
1. Pointer just an integer, the pointer type means nothing.
2. No big deal.

#### Reference
1. [char pointer and array](https://stackoverflow.com/questions/1335786/c-differences-between-char-pointer-and-array)
2. [function pointer](https://www.cprogramming.com/tutorial/function-pointers.html)


