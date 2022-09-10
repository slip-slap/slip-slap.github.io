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


#### Template function
