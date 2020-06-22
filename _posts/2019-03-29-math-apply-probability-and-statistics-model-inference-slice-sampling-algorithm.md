---
layout: post
title: "P.A.S.M.I.: Slice Sampling"
keywords: []
description: ""
category: "math"
tags: ["apply","P.A.S.M.I."]
---
{% include JB/setup %}


#### Intuitive Explanation


#### Slice Sampling Algorithm
1. Compared with Metropolis-Hastings, Slice Sampling doesn't need helper distribution. Metropolist-Hastings needs a transition distribution
2. It needs to provide the target distribution





#### Python Implementation

``` python
import numpy as np
import scipy.stats as st
import seaborn as sns
import matplotlib.pyplot as plt


ns.set()
mu = 65
sigma = 32


def p(x):
    return st.norm.pdf(x, loc=mu, scale=sigma)


def p_inv(y):
    x = np.sqrt(-2*sigma**2 * np.log(y * sigma * np.sqrt(2*np.pi)))
    return mu-x, mu+x


def slice_sampling(iter=1000):
    samples = np.zeros(iter)
    x = 0

    for i in range(iter):
        u = np.random.uniform(0, p(x))
        x_lo, x_hi = p_inv(u)
        x = np.random.uniform(x_lo, x_hi)
        samples[i] = x

    return samples


if __name__ == '__main__':
    samples = slice_sampling(iter=10000)
    sns.distplot(samples, kde=False, norm_hist=True)
    x = np.arange(-100, 250)
    plt.plot(x, p(x))
    plt.show()
```


#### Inference
[slice sampling](https://wiseodd.github.io/techblog/2015/10/24/slice-sampling/)




