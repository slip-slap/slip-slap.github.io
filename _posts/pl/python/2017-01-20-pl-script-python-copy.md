---
layout: post
title: "Python:  Copy"
keywords: []
description: 
category: "PL"
tags: ["python","script"]
---
{% include JB/setup %}

#### copy in Python
In Python, Assignment statements do not copy objects, they create bindings
between a target and an object.  When we use **=** operator user thinks that
this creates a new object; well, it doesn't. It only creates a new  variable
that shares the reference of the original object. 


#### deep copy

```python
import copy
a = [1,2,3,4,5,6]
b = copy.deepcopy(a)
```
