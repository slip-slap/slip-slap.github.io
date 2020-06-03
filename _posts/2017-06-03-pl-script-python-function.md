---
layout: post
title: "Python: Function"
keywords: []
description: "python"
category: "PL"
tags: ["python","script"]
---
{% include JB/setup %}

#### function
Function is the first-class citizen in python


#### Function Calls
1. Pass by value
2. Pass by reference
3. Pass by Object reference
Python is a PASS-BY-OBJECT-REFERENCE programming language


#### *args and **kwargs

1. in a function, use the symbol * to take in a variable number of arguments, by convention, it is often used with the word args
2. in a function, use the symbol ** to take in a keyworded,variable-length argument
3. using the *, the variable we associate with the * becomes an iterable meaning you can do things like iterate over it.


```python
# multify function with * marker
def test(*a):
    result=1
    for i in a:
        result=result*i
    return result
        
result=test(1,2,3,4)
print(result)

##############################################################
# function with ** marker
def fun(**kwargs):
    for key,value in kwargs.items():
        print(key,value)
        
fun(a=3,b=4,c=5)
```

#### common errors

```python
from scipy.stats import norm
norm.rvs(0,loc=1,10)

# error information

File "<ipython-input-51-6f874d889d4d>", line 2
    norm.rvs(0,loc=1,10)
                    ^
SyntaxError: positional argument follows keyword argument

# explaination
keyword argument is just another positional argument with a default value
```



#### Reference
1. [*args and **kwargs in Python](https://www.geeksforgeeks.org/args-kwargs-python/)

