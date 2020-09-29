---
layout: post
title: "C++ Keyword: typedef"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}

#### Why bother?
one purpose of having types is to make sure that variables are always used in the way that they were
intended to be used.
1. typedefs provide a level of abstraction away from the actual types being used, allowing you, the
   programmer, to focus on the concept of just what a variable should mean.
2. This makes it easier to write clean code, but it also makes if far easier to modify your code 


```cpp
typedef std::map<string, int> ScoreByName;
```

#### program once
1. it is header guard, this file will be included only once.
2. try to avoid double including
- header guard are little piece of codes protect the contents of a header from being copied more
  than once.


#### reference
1. [typedef](https://www.cprogramming.com/tutorial/typedef.html)
