---
layout: post
title: "C++ Keyword: Const"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}


#### I
1. const is a fake keyword, it's just a promise.

#### with pointer
1. computer read a statement backward
- const int \* A: A is a pointer to an int that is constant;
- int \* const A: A is a const pointer to an int;
- const int \* const A: A is a const pointer to an const int.



#### with class
1. the read order is still backward
- the first const modify contents in curly bracket, so you can't make a change
  in the curly bracket.
- the second const modify the return value which is a char pointer. you can't
  change the pointer.
- the third const modify the content of the return pointer, you can't change the
  content of the pointer.


```cpp
class Entity
{
    private:
        char * m_entity_name;
    public:
        const char* const get_entity_name() const
        {
            *m_entity_name = 'c';
            return m_entity_name;
        }
};
```




