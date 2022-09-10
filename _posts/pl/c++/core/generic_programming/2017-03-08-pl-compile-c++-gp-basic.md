---
layout: post
title: "C++ GP:  basic"
keywords: []
description: "c++"
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}

#### Typename
1. The keyword *typename* was instroduced during the standardization of C++ to
   clarify that an identifier inside a template is a type.
Consider the following example

```cpp
template <typename T> class My class
{
	typename T::SubType* ptr;
}
```

Without *typename*, *SubType* would be considered a static member. Thus, it
would be a concrete variable or object. As a result, the expression

```cpp
T::SubType * ptr
```

would be a multiplication of the static *Subtype* member of class *T* with
*ptr*.



#### Instantiation and Specialization
1. The process of creating a regular class, function, or member function from a
   template by substituing actual values for its arguments is called template
   instantiation.
2. The resuting entity(class, function, or member function) is generically
   called a specialization.



