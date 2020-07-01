---
layout: post
title: "EM: summary"
keywords: []
description: 
category: "AI"
tags: ["EM"]
---
{% include JB/setup %}

#### EM algorithm

EM is an algorithm for maximum the likelihood function

**广义EM算法，E步骤是固定参数优化隐分布，M步骤是固定隐分布优化参数,可以用GMM算作为类比**

#### Jensen's inequality
Jensen's inequality generalizes the statement that the secant line of a convex lies above the graph of the function.
which in Jensen's inequality for two points. The Jensen's inequality is(for $$t\in[0,1]$$):



$$
f\left(t x_{1}+(1-t) x_{2}\right) \leq t f\left(x_{1}\right)+(1-t) f\left(x_{2}\right)
$$

in the context of probability, it is generally stated in the following form, if X is a random variable and 
$$\varphi$$ is a convex function

$$
\varphi(\mathrm{E}[X]) \leq \mathrm{E}[\varphi(X)]
$$

<img src="{{IMAGE_PATH}}/convex.png" height="" width="" />


#### Galois
1. EM algorithm, what does E and M, respectively, stand for? 
2. They denote the expectation and maximum of the parameter theta that we are
   looking for, nothing about the latent variable, it's just a tool to make the
   topic eazier to understand.
- suppose we have a mixed guassian model, they are $N_1(\mu^1,\sigma^1)$ and $N_2(\mu^2,\sigma^2)$
- then the parameters are $(\mu^1,\sigma^1,\mu^2,\sigma^2)$, we want to
  calculate their expectation 
- Maximization the likelihood.



#### Reference
1. [Expectation and Maximization](https://en.wikipedia.org/wiki/Expectation%E2%80%93maximization_algorithm)

