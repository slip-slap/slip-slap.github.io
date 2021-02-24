--- 
layout: post 
title: "C++: Memory Management" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}

#### H
1. A resource is something that must be acquired and later released 
- Explicitly or implicitly
- Resource mangagement should not be manual, **we don't want leaks**

2. A resource should have an owner
- usually a "handle" "handle" should present a well-defined and useful
  abstraction.



#### RAII


#### Layout
1. Initilized data segment: all the global & static variables that were
   initialized to a non-zero values, and all constant data, are stored here.
2. Uninitalized data segment(BSS): All the global and static variables that were
   either not initialized, or initialized to zero, are stored in this segment.

