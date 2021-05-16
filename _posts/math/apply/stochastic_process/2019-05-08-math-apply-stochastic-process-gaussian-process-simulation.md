---
layout: post
title: "G.P.: Simulation"
keywords: []
description: 
category: "math"
tags: ["apply","S.P."]
---
{% include JB/setup %}

#### 1. Sampling process

##### 1.1 Cholesky decomposition
1. Compute the Cholesky  Decomposition
- In practice it maybe necessary to add a small multiple of the identity matrix
$\epislon I$ to the covariance matrix for numerical reasons. This is because the eigenvalues 
of the matrix $K_0$ can decay very rapidly and without this stabilization the Cholesky decomposition
failes.


##### 1.2 Generate independent samples

```python
n = 1000
u = np.random.normal(loc=0, scale=1, size=d*n).reshape(d, n)
```

##### 1.3
$$
E[x]=E[m+L u]=m+L E[u]=m
$$

and 

$$
E\left[x x^{T}\right]=E\left[m m^{T}\right]+E\left[m u^{T} L^{T}\right]+E\left[L u m^{T}\right]+E\left[L u u^{T} L^{T}\right]=\left\|m^{2}\right\|+L E\left[u u^{T}\right] L^{T}=\|m\|^{2}+K
$$



#### Reference
1. [sampling](https://juanitorduz.github.io/multivariate_normal/)

