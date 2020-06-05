--- 
layout: post 
title: "C++: Array" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}


#### static array

#### dynamic array

```cpp
#include <iostream>

int main(){

    // stack
    int a[5]={1,3,5,2,0};
    int *b;

    //heap
    b = new int[5];
    for(int i=0; i<5; i++){
       std::cout<<b[i]<<std::endl;
       std::cout<<*(b+i)<<std::endl;
    }
}
```


#### Increasing Array Size
1. why array size can not increase directly?
- Because the memory of array is contiguous. If you increase the size at the end
  of current array. You don't know whether the following address is used by the
  other program.
- so the only way is create a big array.
