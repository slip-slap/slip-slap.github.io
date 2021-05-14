--- 
layout: post 
title: "C++: Garbage Collection" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}

#### Apply these general in order

1. Store data in containers
- the semantics of the fundamental abstraction is reflected in the interface

2. Manage all resources with resource handles
- RAII
- Not just memory: all resources

3. Use "smart pointers"
- they are still pointers

