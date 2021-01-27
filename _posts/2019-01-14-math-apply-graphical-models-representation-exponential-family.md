---
layout: post
title: "G.M.R.: Exponential Family"
keywords: [""]
description: ""
category: "math"
tags: ["apply","G.M.","G.M.R."]
---
{% include JB/setup %}

#### Definition
1. A sufficient statistics function $\tau$ from assignments to $\mathcal{X}$ to
$$
\mathcal{R}^{K}
$$.
2. A parameter space that is a convex set 
$$
\Theta \subseteq \mathcal{R}^{M}
$$
of legal parameters.
3. A natural parameter function t from $\mathcal{R}^{M}$ to $\mathcal{R}^{K}$.
4. An auxiliary measure A over $\mathcal{X}$
Each vector of parameters $\theta \in \Theta$ specifies a distribution
$P_{\theta}$ in the family as: <br />
$$
P_{\boldsymbol{\theta}}(\xi)=\frac{1}{Z(\boldsymbol{\theta})} A(\xi) \exp
\{\langle\mathbf{t}(\boldsymbol{\theta}), \tau(\xi)\rangle\}
$$ <br />
where $\<t(\theta),\tau(\theta)\>$ is the inner product of the vectors $t(\theta)$
and $\tau(\theta)$, and  <br />
$$
Z(\boldsymbol{\theta})=\sum_{\xi} A(\xi) \exp
\{\langle\mathbf{t}(\boldsymbol{\theta}), \tau(\xi)\rangle\}
$$

#### Linear Exponential Families
A special class of exponential families is made up of families where the
function t is the identity function.


#### Entropy of an Exponential Model
$$
\boldsymbol{H}_{P_{\boldsymbol{\theta}}}(\mathcal{X})=\ln
Z(\boldsymbol{\theta})-\left\langle\boldsymbol{E}_{P_{\boldsymbol{\theta}}}[\tau(\mathcal{X})],
\mathbf{t}(\boldsymbol{\theta})\right\rangle
$$
- The entropy decomposes as a difference of two terms. The first is the
  partition function $Z(\theta)$. The seconds depends on the expected value of
  the sufficient statistics $\tau(\mathcal{X}$.

#### Projection
1. Similar to the geometric concept of projecting a point onto a hyperplane, we
consider the problem of finding the distribution, within a given exponential
family, that is closest to a given distribution in terms of relative entropy.
2. We might want to approximate P with a product of marginal distributions.
   Because the notion of relative entropy is not symmetric, we can use it to
   define two types of approximations.
- I-projection: information projection of $\mathcal{P}$ onto $\mathcal{Q}$ is
  the distribution <br />
  $$
  Q^{I}=\arg \min _{Q \in \mathcal{Q}} D(Q \| P)
  $$
- M-projection: moment projection of $\mathcal{P}$ onto $\mathcal{Q}$ is
  the distribution <br />
  $$
  Q^{M}=\arg \min _{Q \in \mathcal{Q}} D(P \| Q)
  $$




#### Galois
1. Mathematician are so resistant, they can't find the exact solution, but we
   can find a approximately solution.


#### Reference
1. [Exponential family](https://en.wikipedia.org/wiki/Exponential_family#Definition)
