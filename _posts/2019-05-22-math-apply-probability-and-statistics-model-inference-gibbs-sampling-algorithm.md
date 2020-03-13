---
layout: post
title: "P.A.S.M.I.: Gibbs Sampling"
keywords: ["MCMC"]
description: ""
category: "math"
tags: ["apply","P.A.S."]
---
{% include JB/setup %}

#### Gibbs Sampling

1. Gibbs Sampling is a MCMC method
2. Gibbs Sampler can draw samples from any distribution
3. the helper distribution that you need is the conditional distribution



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



#### Reference
1. [conditional distribution of multivariate Gaussian](http://fourier.eng.hmc.edu/e161/lectures/gaussianprocess/node7.html.)
2. [Gibbs Sampling](https://wiseodd.github.io/techblog/2015/10/09/gibbs-sampling/)





