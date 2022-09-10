---
layout: post
title: "C++ GP:  Trait classes"
keywords: []
description: "c++"
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}

#### Why bother?
It is true that class template or function template can accept as many as
possible arguments, however, which brings inconvience for client. It is tedious
and error-prone to provide multiple arguments. 
That's where the trait class comes to rescue, to reduce the number of template
prameters.




```cpp
template <typename T>
struct iterator_traits<T*>
{
	typedef T value_type;
	typedef ptrdiff_t difference_type;
	typedef T* pointer;
	typedef T& reference;
	typedef random_access_iterator_tag iterator_category;
}	
```
