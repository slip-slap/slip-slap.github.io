--- 
layout: post 
title: "C++: Variable assignment and initialization" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}


#### Definition: Variable Assignment
After a variable has been defined, you can give it a value(in a separate
statement) using the **=** operator. This process is **copy assignment** for
short.

```cpp
int width;
width = 5;
```

1. The downside of assignment is that it requires at least two statements: one
   to define the variable, and one to assign the value.


#### Definition: Initialization
When a variable is defined, you can also provide an initial value for the
variable at the same time. This is called initialization.
- The value used to initialize a variable is called an initializer.
- Initialization in C++ is surprisingly complex.

```cpp
int a; // no initializer;
int b = 5; // initializer after equals sign.
int c( 6 ); // initializer in parenthesis
int d { 7 }; // initializer in braces.
```


#### Reference
1. [Variable assignment and initialization](https://www.learncpp.com/cpp-tutorial/variable-assignment-and-initialization/)
