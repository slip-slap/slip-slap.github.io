---
layout: post
title: "C++ OOP: Class"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---

{% include JB/setup %}

####
1. why data is modified by private ? function is modified by public?
- just like a car, it has button you can push, the button is like a function,
  it's public.
- But what's in the button, you have no idea. It's the data which is private.



#### Galois
1. Static class members are treated almost exactly like global variables/functions. Because they are
   not tied to an instance. 
- There is nothing to discuss regarding memory layout.
2. Class member variables are duplicated for each instance as you can imagine, as each instance can
   have its own unique value for every member variable.
3. Class member functions only exist once in a code segment in memory. At a low level, they are just
   like normal global functions but they receive a pointer to this. With Visual studio on x86, it's
   via ecx register using thiscall calling convention.





