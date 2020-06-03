--- 
layout: post 
title: "C++: Function" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}

#### Terminology
1. Prototype, signature, header of a function means the following code

```cpp
void foo();
```

3. Functions are called modules or procedures.

#### 
There are two piece of the code, so there will be two function in the memory.

```cpp
#include <iostream>
int add(int x, int y);

int main(){
    int a = 10, b = 15, c;
    c = add(a, b);
    std::cout<<"sum is "<<c;
}

int add(int x, int y){
    int z;
    z = x + y;
    return z;
}
```

<img src="{{IMAGE_PATH}}/pl-cpp-function-diagram.png">



#### Function
1. Grouping instructions is a function.
2. Grouping data is a structure.

#### 1. Pass by Value  
1. formal parameters
2. actual parameters
+ 形参的初始化方式和变量的初始化方式是一样的
+ one function cannot access the variables of another function directly, it can
  access indirectly

```c++
#include <iostream>
void swap(int a, int b){
    int temp = a;
    a = b;
    b = temp;
}
int main(){
    int a = 10;
    int b = 20;
    std::cout<< a << b<<std::endl ;
    swap(a, b);
    std::cout<< a << b<<std::endl ;
}
```

<img src="{{IMAGE_PATH}}/pl-cpp-function-pass-by-value.png">

#### 2. Pass by Address
1. why I can't understand pointers, because I don't know to **draw**.
```c++
#include <iostream>
void swap(int *a, int *b){
    int temp = *a;
    *a = *b;
    *b = temp;
}
int main(){
    int a = 10;
    int b = 20;
    std::cout<< a << b<<std::endl ;
    swap(a, b);
    std::cout<< a << b<<std::endl ;
}
```

<img src="{{IMAGE_PATH}}/pl-cpp-function-pass-by-pointer.png">
#### 3. Pass by Reference
1. In this function, **swap is not a separate function**
2. It has became a part of main function and there is only one activation
   record.
3. a machine code of the swap function will be pasted in main function.
4. In nature, they are inline function.

```c++
#include <iostream>
void swap(int &a, int &b){
    int temp = a;
    a = b;
    b = temp;
}
int main(){
    int a = 10;
    int b = 20;
    std::cout<< a << b<<std::endl ;
    swap(a, b);
    std::cout<< a << b<<std::endl ;
}
```
<img src="{{IMAGE_PATH}}/pl-cpp-function-pass-by-reference.png">

### 函数指针
+ 函数指针指向的是函数而非对象
+ 当把函数名作为一个值使用时，该函数自动转换成指针
