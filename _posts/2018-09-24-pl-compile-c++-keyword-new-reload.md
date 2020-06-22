---
layout: post
title: "C++ Keyword: New"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}


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



#### Galois
1. When keyword new is used, the return value is always **address**;



#### reference
1. [cpp rererence](https://en.cppreference.com/w/cpp/memory/new/operator_delete)
