--- 
layout: post 
title: "C++: Function Parameters" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}


#### Arrays
1. Arrays can only be passed by address
2. for the formal parameters in foo, you can replace **a[]** with **\*a**, it
   still means the same thing. 
- **int a[]** can only be used to point to array.
- **\*a** can be used to point an integer.


```code
#include <iostream>
void foo(int a[], int n){
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


