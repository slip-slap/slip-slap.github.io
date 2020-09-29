---
layout: post
title: "Python: Operator"
keywords: [] 
description: "python"
category: "PL"
tags: ["python","script"]
---
{% include JB/setup %}


#### method
1. operator.itemgetter(items): return a callable object that fetches item from its operand, using the operand's __getitem__()
2. f = itemgetter(2), the call f(r) returns r[2]
3. f = itemgetter(2, 5, 3), the call g(r) returns (r[2], r[5], r[3])

```python
itemgetter(1,3,5)('ABCDEFG')
# ('B', 'D', 'F')

# the following code has the same result
fun1 = itemgetter(1,3,5)
fun1('ABCDEFG')
```
