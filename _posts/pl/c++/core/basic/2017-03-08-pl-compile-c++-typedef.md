---
layout: post
title: "C++ Keyword: typedef"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}


**Definition:** Typedef(which is short for "type definition") is a keyword that
creates an alias for an existing data type. To create such an alias, we use the
*typedef* keyword.


```cpp
typedef double distance_t; // define distance_t as an alias for type double;
```

1. By convention, typedef names typically use a "\_t" suffix. This both
   indicates that the name is a typedef. and helps prvent from naming collisions
   with other types of identifiers.



#### Scope
Scope if a property of an identifier, typedef identifiers follow the same
scoping rules as variable identifiers: a typedef defined inside a block has
block scope and is usable only within that block. whereas a typedef defined in
the global namespace has file scope and is usable to the end of the file.



#### Why bother?
one purpose of having types is to make sure that variables are always used in the way that they were
intended to be used.
1. typedefs provide a level of abstraction away from the actual types being used, allowing you, the
   programmer, to focus on the concept of just what a variable should mean.
2. This makes it easier to write clean code, but it also makes if far easier to modify your code 


```cpp
typedef std::map<string, int> ScoreByName;
```






#### program once
1. it is header guard, this file will be included only once.
2. try to avoid double including
- header guard are little piece of codes protect the contents of a header from being copied more
  than once.





#### reference
1. [typedef](https://www.cprogramming.com/tutorial/typedef.html)
