---
layout: post
title: "Python: Collections and Algorithm" 
keywords: ["keywords", "python"]
description: "python"
category: "code"
tags: ["python"]
---
{% include JB/setup %}

### Collections

####  what is collections module
1. Collections in Python are containers that are used to store collections of
   data, for example, **list, dict, set, tuple** etc. These are built-in
   collections. Several modules have been developed that provide additional data
   structures to store collections of data.

2. It works like the Java.util package, which contains **Collection** and
   **Map** interface
3. It works like the C++ STl, a collection of container, iterator, and algorithm

#### Counter
Counter is a subclass of dictionary object. The **Counter()** function in
collections module takes an iterable or a mapping as the argument and returns a
Dictionary <br />

```python
import collections
collections.Counter([1,2,2,1,3,4,5,5,4])
```

#### OrderedDict

**OrderedDict** is a dictionary where keys maintain the order in which they are
inserted, which means if you change the value of a key later, it will not change
the position of the key.

```python
od = collections.OrderedDict()
od['a'] = 1
od['b'] = 2
od['f'] = 3
od['c'] = 4
```

#### deque

The deque is a list optimized for inserting and removing items

#### ChainMap

**ChainMap** is used to combine several dictionaries or mappings. It returns a
list of dictionaries.

#### namedtuple

### Algorithm
max function self-define compare method

#### reference
1. [Counter](https://docs.python.org/2/library/collections.html)
2. [max](https://www.programiz.com/python-programming/methods/built-in/max)
