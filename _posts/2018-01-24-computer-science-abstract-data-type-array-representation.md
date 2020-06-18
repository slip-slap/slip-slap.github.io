---
layout: post
title: "A.D.T.: Array Representations"
keywords: []
description: ""
category: "CS"
tags: ["A.D.T."]
---
{% include JB/setup %}

#### 2D arrays
1. The compiler allows us to access a number in the matrices with row index and
   column index.
2. But in nature, in the memory, it's one dimensional, they put them in a
   contiguous memory, it's a sugar.

<img src="{{IMAGE_PATH}}/computer-science-abstract-data-type-2d-array.png">


#### 2D arrays and Compilers
1. why index in array in C++ starts with 0?  why why why?
- because the formula:  if start with zero
$$Addr(A[i]) = Addr_0 + i \times size$$
- if start start with 1:
$$Addr(A[i]) = Addr_0 + (i - 1) \times size$$
