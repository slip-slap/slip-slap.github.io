---
layout: post
title: "ODE: Lie Group"
keywords: [ "PDE"]
description: ""
category: "math"
tags: ["change"]
---
{% include JB/setup %}

#### Why bother this?

1. Lie's theory of symmetry analysis of differential equations relies on the
   invariance of differential under a transformation of independent and dependent variables:
- e.g. scalar 1-dim, PDE of 2nd order: $ F\left(x, u, \partial_{x} u,
  \partial_{x}^{2} u\right) $
- Transformation: $ \mathbf{T}(x, u)=(\tilde{x}, \tilde{u}) $
- Transformation $\mathbf{T}$ induces the transformation of the derivatives:
$$
\partial_{x} u \stackrel{\mathbf{T}}{\rightarrow} \partial_{\tilde{x}} \tilde{u}=A\left(x, u, \partial_{x} u\right), \quad \partial_{x}^{2} u \stackrel{\mathbf{T}}{\rightarrow} \partial_{\tilde{x}}^{2} \tilde{u}=B\left(x, u, \partial_{x} u, \partial_{x}^{2} u\right)
$$

- $\mathbf{T}$ is a symmetry transformation if:
$$
F\left(x, u, \partial_{x} u, \partial_{x}^{2} u\right)=0 \Leftrightarrow F\left(\tilde{x}, \tilde{u}, \partial_{\tilde{x}} \tilde{u}, \partial_{\tilde{x}}^{2} \tilde{u}\right)=0
$$

- if $\mu = \mu(x)$ is a solution of PDE, then also $
  \tilde{u}=\tilde{u}(\tilde{x}) $


2. If the transformation forms a continuous group to some parameter $
\mathbf{T}=\mathbf{T}(x, u, \epsilon) $, then its linear expansion term carries
all information of the transformation, i.e. Lie's theory is a linear theory.



#### Galois
1. Treat a solution as a point in the solution space, and figure out the structure in the solution space.
2. The essence, for being a space, is whether it satisfy some properties.
