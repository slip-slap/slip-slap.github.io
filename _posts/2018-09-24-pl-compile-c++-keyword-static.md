---
layout: post
title: "C++ Keyword: static"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}


#### I
This keyword is related to the linker stage.
- The linker is not going to look outside of the scope of this translation unit
  for that symbol definiton
- kind of declaring a variable private in a class.



#### Example

```cpp
//my_main.cpp
#include <iostream>

extern int s_variable;

void function(){
}

int main()
{
    std::cin.get();
}

//static.cpp
int s_variable = 3;
static void function()
{
}
```



