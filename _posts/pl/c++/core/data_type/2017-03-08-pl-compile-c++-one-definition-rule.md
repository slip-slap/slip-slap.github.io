--- 
layout: post 
title: "C++: One definition rule" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}


#### Inline function
The spec specifically states that the ODR does not apply to inline functions, so
if you have a header file with an implementation of a class member function
	that's marked inline, that's perfectly fine.


#### i++ and ++i
1. ++i will increment the value of i, and then return the incremented value.
2. i++ will increment the value of i, but return the original value that i held
	before being incremented.
- i++ will create an extra copy that just gets thrown away.

#### reference
1. [i++ and ++i](https://stackoverflow.com/questions/24853/what-is-the-difference-between-i-and-i)

