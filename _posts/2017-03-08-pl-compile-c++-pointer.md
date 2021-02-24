--- 
layout: post 
title: "C++: Pointer" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}


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

#### Problems Using Pointers
1. uninitialized ptr.
2. memory leak.
3. dangling pointer.


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


