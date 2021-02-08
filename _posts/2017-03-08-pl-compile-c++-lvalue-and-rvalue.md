--- 
layout: post 
title: "C++: Lvalues and Rvalues" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}


####
1. 
2.rvalue: a temporary value

###
1. you can't take an lvalue reference form an rvalue.
1. you can take an lvalue reference form an lvalue.


####
1. the keyword **const** will ask the compiler do something.
- compier will probably create like a temporary variable to storage
- then assign it to that reference.




#### Error
```cpp
# include <stdio.h>
// void setValue(const int& value){
void setValue(int& value){
}
int main(){
    int i = 10;
    setValue(i);
    setValue(10);//Error Information: initial value of reference to non-const must be an lvalue
}
```
