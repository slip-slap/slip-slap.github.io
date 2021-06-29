---
layout: post
title: "Statistics: Gibbs sampling"
keywords: []
description: 
category: "math"
tags: ["apply","statistics"]
---
{% include JB/setup %}

**Question:** How to sample from a multivariable distribution in which only the
conditional distribution is clear, such as the probability distribution of one
variable is clear given the rest.

- The one who answer the question is gibbs.


#### Process
Suppose we want to generate samples from the joint distribution of $$
\left(Y_{1}, \ldots, Y_{k}\right) \in R^{k} $$, Further suppose that we can
generate from each of the full conditionalal distributions$$ Y_{i} |
Y_{-i}=y_{-i} $$, where <br />
$$
Y_{-i}=\left(Y_{1}, \ldots, Y_{i-1}, Y_{i+1}, \ldots, Y_{k}\right)
$$
namely, we can generate from the conditional distribution of $Y_i$ given the
values of all the other coordinates.
- Specify an initial value $$
\left(y_{1}(0), \ldots, y_{k(0)}\right) \text { for }\left(Y_{1}, \ldots,
Y_{k}\right)
$$
- For N>0, generate $Y_{i(N)}$ from its conditional distribution given $$
\left(y_{1}(N), \ldots, y_{i-1(N)}, y_{i+1(N-1)}, \ldots, y_{k(N-1)}\right)
$$ for each $i=1,\ldots,k$.








#### Python Implementation

```python
import numpy as np
import seaborn as sns

def p_x_given_y(y, mus, sigmas):
    mu = mus[0] + sigmas[1, 0] / sigmas[0, 0] * (y - mus[1])
    sigma = sigmas[0, 0] - sigmas[1, 0] / sigmas[1, 1] * sigmas[1, 0]
    return np.random.normal(mu, sigma)


def p_y_given_x(x, mus, sigmas):
    mu = mus[1] + sigmas[0, 1] / sigmas[1, 1] * (x - mus[0])
    sigma = sigmas[1, 1] - sigmas[0, 1] / sigmas[0, 0] * sigmas[0, 1]
    return np.random.normal(mu, sigma)


def gibbs_sampling(mus, sigmas, iter=10000):
    samples = np.zeros((iter, 2))
    y = np.random.rand() * 10

    for i in range(iter):
        x = p_x_given_y(y, mus, sigmas)
        y = p_y_given_x(x, mus, sigmas)
        samples[i, :] = [x, y]

    return samples


if __name__ == '__main__':
    mus = np.array([5, 5])
    sigmas = np.array([[1, .9], [.9, 1]])

    samples = gibbs_sampling(mus, sigmas)
    sns.jointplot(samples[:, 0], samples[:, 1])

```

#### Galois
1. Gibbs sampling, in nature, just a fancy markov chain.
2. Markov Chain must can do something, so what does markov chain can do?
   **sampling**.
3. After learn stochastic process for such a long time, we finaly can use this
   do something, **finally!!!**


#### Reference
1. [conditional distribution of multivariate Gaussian](http://fourier.eng.hmc.edu/e161/lectures/gaussianprocess/node7.html.)
2. [Gibbs Sampling](https://wiseodd.github.io/techblog/2015/10/09/gibbs-sampling/)





