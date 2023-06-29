---
layout: post
title: "Python: Keyword"
keywords: []
description: ""
category: "PL"
tags: ["python","script"]
---
{% include JB/setup %}

#### True and False
In python, True equals 1, and False equals 0
```
np.sum([True,5]) # The result is 6
```


#### global,local and nonlocal
1. global variables, a variable declared outside of the function or in global scope is known as global variable. This means, global variable can be
accessed inside or outside of the function.
2. local variables: a variable declared inside the function's body or in the local scope is known as local variable
3. nonlocal variable: nonlocal variable are used in nested function whose local scope is not defined. This means, the variable can be neither in the
local nor the global scope


```python
def get_index():
    index = 0
    def current_index():
        nonlocal index
        index = index + 1
        print(index)
    return current_index

# call the function
f1 = get_index()
f1()
```


