---
layout: post
title: "C++ GP: Template Parameters"
keywords: []
description: "c++"
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}

#### 1. Type Parameters
Type parameters are introduced with either the keyword *typename* or the keyword
*class*: the two are entirely equivalent.
1. The keyword must be followed by a simple identifier and that identifier must
   be followed by a comma to denote the start of then next parameter
   declaration.
2. A closing angle bracket to denote the end of the parameterization clause, or
   an equal sign to denote the beginning of a default template argument.

#### 2. Nontype parameters

#### 3. Template template parameters
Template template parameters are placeholders for class templates. They are
declared much like class templates, but the keywords struct and union can not be
used:

```cpp
template <template<typename X> class C> void f(C<int>* p); // OK
template <template<typename X> struct C> void f(C<int>* p); // invalid
template <template<typename X> union C> void f(C<int>* p); // invalid 
```

