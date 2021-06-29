---
layout: post
title: "C++ STL: Architecture"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}


#### Introduction
1. Container
2. Iterator
3. Algorithm


#### Introduction
1. std::vector manages its own memory. That means that, when the destructor of
   a vector is invoked the memory held by the vector is released.
- std::vector also invokes an object's destructor when it is removed
  through(through erase, pop\_back, clear or the vector's destructor)

2. What does this command do?
- you add a copy of foo(created using foo's copy constructor) to the vector.
  foo will be destroyed when it goes out of scope, and the copy will be
  destroyed when it is removed from the vector.
- That's an important point: std::vector only stores copies of an object, which
  means the object must have a meaning full copy constructor. 
- If you have a vector of pointers, then the pointer itself will be copied, and
  not what it points to.
- This behavior is the same for every standard container(like list or map)

```cpp
Foo foo;
m_foo_vector.push_back(foo);
```

#### Reference
1. [container behaviour](https://stackoverflow.com/questions/7382090/c-vector-push-back)

