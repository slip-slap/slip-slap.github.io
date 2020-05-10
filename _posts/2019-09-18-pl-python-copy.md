---
layout: post
title: "Python Copy"
keywords: ["python", "introduction"]
description: "python"
category: "PL"
tags: ["python"]
---
{% include JB/setup %}

#### copy in Python
In Python, Assignment statements do not copy objects, they create bindings between a target and an object. <br />
When we use **=** operator user thinks that this creates a new object; well, it doesn't. It only creates a new <br /> 
variable that shares the reference of the original object. <br />


#### deep copy

```python
import copy
a = [1,2,3,4,5,6]
b = copy.deepcopy(a)
```
