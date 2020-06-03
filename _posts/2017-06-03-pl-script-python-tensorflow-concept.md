---
layout: post
title: "Python: Concept in Tensorflow"
keywords: ["python"]
description: 
category: "PL"
tags: ["python","script"]
---
{% include JB/setup %}

#### what the crap is the rank?
1. The rank of a tensor is different is not the same as the rank of a matrix.
**the rank of a tensor is the number of indices required to uniquely select each element of the tensor.** also
known as **"order","ndims" or "degree"**

2. numpy compatibility, Equivalent to np.ndim

|       tensor      | rank |
|:-----------------:|:----:|
|         1         |   0  |
|      [1,2,3]      |   1  |
| [[1,4,2],[5,7,2]] |   2  |













#### Reference
1. [what is rank](https://www.tensorflow.org/api_docs/python/tf/rank)
