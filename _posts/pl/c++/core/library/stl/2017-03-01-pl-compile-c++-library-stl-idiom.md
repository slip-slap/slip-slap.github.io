---
layout: post
title: "C++ STL: Idiom"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}


#### Remove and Erase

```cpp
std::vector<int> before{4};
std::copy(before.begin(), before.end(),std::ostream_iterator<int>{std::cout, "\n"});
before.erase(std::remove(before.begin(), before.end(),4),before.end());
std::copy(before.begin(), before.end(),std::ostream_iterator<int>{std::cout, "\n"});
```









#### Reference
1. [std::remove](https://www.geeksforgeeks.org/stdremove-stdremove_if-c/)
