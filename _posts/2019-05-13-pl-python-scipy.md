---
layout: post
title: "Python: Scipy Module"
keywords: []
description: "scipy"
category: "PL"
tags: ["python"]
---
{% include JB/setup %}


#### statis

1. this module contains the common distribution, like uniform distribution, norm
   distribution, poisson distribution, binom distribution etc.
2. There are common functions among all these distributions. like rvs which
   generates random variables,cdf function

+ RV: random variables
+ cdf: Cumulative distribution function of the given RV 
+ ppf: Percent point function (inverse of 'cdf')
+ pdf: probability density function
+ pmf: probability mass function(PMF) is a function that gives the probability
  that a discrete random variable is exactly equal to some value
```python
import scipy.stats as st
import numpy as np
# generate random variables
# there are three parameters 
np.random.seed(3)
st.norm.rvs(0,1,10)j

result = st.norm.cdf(0)
# result = 0.5 
result = st.norm.ppf(0.6)
# result = 0.253347
```



#### inference
[scipy lesson form CSDN](https://blog.csdn.net/u011702002/article/details/78245804)


