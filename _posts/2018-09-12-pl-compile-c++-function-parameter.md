--- 
layout: post 
title: "C++: Function Parameters" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}

#### Parameter Passing
1. pass by value
2. pass by reference
- pass by reference is a grammer sugar, references are implemented using
  pointers. I think the reason they invite reference, because they don't c++ be
  taken over by other programming language.
3. pass by address



#### How to Choose
1. Use references when you can, and pointers when you have to.


#### 1. Arrays
1. Arrays can only be passed by address
2. for the formal parameters in foo, you can replace **a[]** with **\*a**, it
   still means the same thing. 
- **int a[]** can only be used to point to array.
- **\*a** can be used to point an integer.


```code
#include <iostream>
void foo(int a[], int n){
//void foo(int* a, int n){
    for(int i=0; i<n; i++){
        std::cout<<a[i];
    }
}

int main(){
  int a[5] = {2,4,1,6,4};
  foo(a, 5);
}
```
 
<img src="{{IMAGE_PATH}}/pl-cpp-function-parameter-array.png">


#### Return value
```cpp

#include <iostream>
int * foo(int n){
    int *a;
    a = (int *)malloc(n*sizeof(n));
    return a;
}

int main(){
  int *p;
  p = foo(5);
}
```
<img src="{{IMAGE_PATH}}/pl-cpp-function-parameter-array-return-value.png">


#### 2. Struct


#### Galois
1. In C and C++, array can only be passed by address, this is mandatory.
2. How parameter is passed. The most important thing about a function.
