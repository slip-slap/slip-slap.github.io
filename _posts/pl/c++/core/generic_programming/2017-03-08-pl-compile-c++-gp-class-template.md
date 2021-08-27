---
layout: post
title: "C++ GP:  Class Template"
keywords: []
description: "c++"
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}



#### Template template parameter

if the template parameter of the template template parameter is not used, you
	can omit its name:

```cpp
template <typename T, template <typename ELEM>> class CONT = std::deque>
class Stack { };
// omit the template parameter of template template parameter
template <typename T, template <typename>> class CONT = std::deque>
class Stack { };
```


#### Template template argument matching
If you try to use the above *Stack*, you get an error message saying that the
default value *std::deque* is not compatible with the template template
parameter *CONT*. The problem is that a template template argument must be a
template with parameters that exactly math the parameters of the template
template parameters it substitues.

```cpp
tempate <typename T, template<typename ELEM, typename ALLOC=std::allocator<ELEM>> class CONT = std::deque> class Stack{};
```
