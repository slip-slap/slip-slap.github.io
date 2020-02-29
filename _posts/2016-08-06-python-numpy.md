---
layout: post
title: "numpy package"
keywords: ["numpy", "python3"]
description: ""
category: "python"
tags: ["language" ]
---
{% include JB/setup %}



#### random module
This module is consists of two components, they are <br />
1. simple random data
2. Distributions, such as uniform distribution, normal distribution,poisson distribution etc.

```python
np.random.uniform(-2,2,(3,4))
```


#### common function

##### np.where()
1. The input argument of this API is bool value
2. the return is the index whose bool value is true

```python
# Example 1
result = np.where([False,  True, True, False,True])
# the value of the result
# (array([1, 2, 4]),)
# Example 2
fitness = [-1,6,2,5,1,8,0,3]
result = np.where(fitness == np.max(fitness))
# the value of the result is the position of the maximization value
# (array([5]),)
```


##### numpy中的\*与dot
```python
import numpy as np
a = np.array([[1, 2],[1, 3]])
b = np.array([[1, 2],[2, 4]])
c = a*b   #元素逐个计算 c为[[1, 4],[2, 12]]
d = a.dot(b) #矩阵的乘法
```

##### linalg
+ Core Linear Algebra Tools

```python
matrix = np.array([[1,2],[3,1]])
eigenvalues,eigenvectors = np.linalg.eig(matrix)
```

##### random seed


```python
import numpy as np

np.random.seed(4)
np.random.rand(3)
# array([0.96702984, 0.54723225, 0.97268436])

np.random.rand(3)
#array([0.71481599, 0.69772882, 0.2160895 ])

np.random.seed(4)
np.random.rand(3)
# array([0.96702984, 0.54723225, 0.97268436])
```

##### the axis in python module

look at the following code 

**arr=np.arange(12).reshape(2,3,2)**

1. when execute sum operation along axis=0, which means the variable is **the first value of the array's shape**
2. so are **2*3*

```python3
import numpy as np

arr=np.arange(12).reshape(2,3,2)
"""
array([[[ 0,  1],
        [ 2,  3],
        [ 4,  5]],

       [[ 6,  7],
        [ 8,  9],
        [10, 11]]])

"""
np.sum(arr,axis=0)

"""
array([[ 6,  8],
       [10, 12],
       [14, 16]])
because the sum operates along the axis which equals zero, so we set the starting value to be zero.
and along the axis,the possible values are 0,1 

000->100  001->101
010->110  011->111
020->120  021->121
"""

np.sum(arr, axis=1)

"""
array([[ 6,  9],
       [24, 27]])

along the axis which equals one, the possible value are 0,1,2

000->010->020  100->110->120
001->011->021  101->111->121
"""
########################################################################
arr2 = np.arange(12).reshape(3,4)

# the axis has the same meaning just as np.sum() operation
np.insert(arr2,0,0,axis=0)

```

##### the relationship between numpy arrays and matrix

1. Matrix objects are a subclass of numpy ndarrays, so they inherit all the attributes and methods 
2. Matrices are strictly 2-dimensional, Numpy arrays are N-dimensional

```python

```

##### numpy shuffle

```python3
a = np.arange(24).reshape(4,6)
np.random.shuffle(a)
a[0:2,:]
```

##### function argsort()

```python
import numpy as np
a = [6,4,5]
result = np.argsort(a) 
# result is [1,2,0]
```
 


