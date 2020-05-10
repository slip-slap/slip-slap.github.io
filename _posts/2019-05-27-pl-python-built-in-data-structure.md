---
layout: post
title: "Python: List, Dict and Tuple"
keywords: ["list","dict","tuple"]
description: "python"
category: "PL"
tags: ["python"]
---
{% include JB/setup %}

#### dict

```python
my_dict = {'a':4,'b':5}
for key,value in my_dict.items():
    print(key,value)
# print value
a 4
b 5
```

#### common mistake about tuple

If we print the variable index, and the output is like the code in the comment line. <br />
it means, **it is a tuple, and the first element is an array**

```python
a = [1,3,4,5,2,6]
b = np.array(a)
index = np.where(b > 3)
length = index[0].shape[0]
for i in range(length):
    print(a[index[0][i]])

#(array([2, 3, 5]),)
```
