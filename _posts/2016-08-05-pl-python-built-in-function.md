---
layout: post
title: "Python: Built-in Function"
keywords: ["python", "function"]
description: ""
category: "PL"
tags: ["python"]
---
{% include JB/setup %}


#### built-in function
<h4>dir()</h4>
```
# 作用: 显示对象或模块的方法和属性
var = 3
dir(var)
```

#### zip function

1. grammar: zip(*iterables)
2. function: make an iterator that aggregates from each of the iterables

```python
x = [2,3,5]
y = [5,8,3]
z = [2,9,1]
list(zip(x,y,z))
```



#### reference
1. [official document](https://docs.python.org/3/library/functions.html#zip)

