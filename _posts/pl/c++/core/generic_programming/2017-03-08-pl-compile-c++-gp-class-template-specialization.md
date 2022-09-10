---
layout: post
title: "C++ GP:  Specializations of class templates"
keywords: []
description: "c++"
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}


#### Purpose
Specializing class templates allow you to optimize implementations for certain
types or to fix a misbehavior of certain types for an instantiation of the class
template.
- If you specialize a class template, you must also specialize all member
  functions.
- To specialize a class template, you have to declare the class with a leading 
template<> and a specification of the types for which the class template is
specialized. The types are used as a template argument and must be specified
directly following the name of the class:

```cpp
template<>
class Stack<std::string>
{
};
```



