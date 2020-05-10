---
layout: post
title: "Python: For Loop"
keywords: ["iterable", "iterator"]
description: "python"
category: "PL"
tags: ["python"]
---
{% include JB/setup %}


#### what the crap of iterator protocol?
1. Just as Javabean protocol, a JavaBean Class is  the kind of class that has a **getter()** and **setter()** method for every Class <br />
In python, the iterator protocol is that one method needs to be defined for container objects to provide iteration support <br />
**container.\_\_iter\_\_()**
2. The iterator objects themselves are required to support the following two methods
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**iterator.\_\_iter\_\_()** <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**iterator.next()**
3. The three methods form the iterator protocol.

#### what is iterator ?
In the view of C++, you can just treat it as a pointer


#### builtin method **iter()** and **next()**
1. each time call the **iter()** method, it will call the iterator object **\_\_iter\_\_()** or the iterable container object **\_\_iter\_\_()** <br />
if the input argument of **iter()** is a list, it will call the iterable container object's **\_\_iter\_\_()** method, <br />
and return a new iterator object. <br />
if the input argument of **iter()** is a iterator, it will call the iterator object's **\_\_iter\_\_()** method,
and return the iterator itself. <br />
2. each time call the **next()** method, it will call the iterator object **\_\_next\_\_()**


```python
# each time call the __iter__() will generate a new object
a = [1,4,6,7]
iter_1=a.__iter__()
iter_2=a.__iter__()
"""
<list_iterator object at 0x122fd0748>
<list_iterator object at 0x122fd00f0>
"""
```



