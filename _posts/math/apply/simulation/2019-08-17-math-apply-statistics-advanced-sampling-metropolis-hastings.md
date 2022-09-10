---
layout: post
title: "M.C.: Metropolis and Metropolis Hastings"
keywords: []
description: ""
category: "math"
tags: ["apply","S.P.","M.C."]
---
{% include JB/setup %}

#### Metropolis Hastings Algorithm

1. definition: Metropolis Hastings algorithm is one of the sampling algorithm to sample from high dimensional
2. why called Markov Chain(MC) ? because when you  want to get the next sample, you only need to consider the current sample
3. why called Mento Carlo(MC) ?  because we generate random sample

#### Process
1. It designs a markov chain that proceeds in two stages
- In the first stage, A new point is proposed from some proposal distribution.
- In the second stage, the proposed point is either accepted or rejected. If the
  proposed point is accepted, then the Morkov chain moves there. If it is
  rejected, then the Markov chain stays where it is.

$$
\alpha = \min(1, \frac{P(X^{\prime})}{P(X)} \frac{Q(x^{\prime} \rightarrow x)}{Q(x\rightarrow x^{\prime})})
$$


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;where **P(X)** is the target distribution;
where **$$Q(x^{\prime} \rightarrow x)$$** is the transition probability <br /> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;especially, when **$$Q(x^{\prime} \rightarrow x) = Q(x \rightarrow x^{\prime})$$**, in this case **Metropolis-Hastings Algorithm**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;would become **Metropolis Algorithm**


#### Metropolis Algorithm Implementation

```python
import numpy as np
import scipy.stats as st
import seaborn as sns


mus = np.array([5, 5])
sigmas = np.array([[1, .9], [.9, 1]])


def circle(x, y):
    return (x-1)**2 + (y-2)**2 - 3**2


def pgauss(x, y):
    return st.multivariate_normal.pdf([x, y], mean=mus, cov=sigmas)


def metropolis_hastings(p, iter=1000):
    x, y = 0., 0.
    samples = np.zeros((iter, 2))

    for i in range(iter):
        x_star, y_star = np.array([x, y]) + np.random.normal(size=2)
        if np.random.rand() < p(x_star, y_star) / p(x, y):
            x, y = x_star, y_star
        samples[i] = np.array([x, y])

    return samples


if __name__ == '__main__':
    samples = metropolis_hastings(circle, iter=10000)
    sns.jointplot(samples[:, 0], samples[:, 1])

    samples = metropolis_hastings(pgauss, iter=10000)
    sns.jointplot(samples[:, 0], samples[:, 1])
```












#### Reference

1. [the implementation of Metropolist-hastings algorithm](https://wiseodd.github.io/techblog/2015/10/17/metropolis-hastings/)
