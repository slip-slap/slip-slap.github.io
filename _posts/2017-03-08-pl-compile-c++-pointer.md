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




#### Galois
I want to make function pointer void(func*) make sense. 
- integer pointer int* p
- void pointer void*
- void funtion pointer void(func*)(std::string a)




