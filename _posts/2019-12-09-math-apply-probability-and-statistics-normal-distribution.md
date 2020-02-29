---
layout: post
title: "P.A.S.: Normal Distribution"
keywords: []
description: ""
category: "math"
tags: ["apply"]
---
{% include JB/setup %}

#### Normal Distribution
Also named as Gaussian distribution.

The multivariate normal distribution is:


$$
f_{\mathbf{X}}\left(x_{1}, \ldots, x_{k}\right)=\frac{\exp \left(-\frac{1}{2}(\mathbf{x}-\boldsymbol{\mu})^{\mathrm{T}} \mathbf{\Sigma}^{-1}(\mathbf{x}-\boldsymbol{\mu})\right)}{\sqrt{(2 \pi)^{k}|\mathbf{\Sigma}|}}
$$


For the 2-D Normal Gaussian Distribution,The following is the formula:

$$
p(a, b)=\mathcal{N}\left(\left[ \begin{array}{l}{a} \\ {b}\end{array}\right] ; \left[ \begin{array}{c}{\mu_{a}} \\ {\mu_{b}}\end{array}\right], \left[ \begin{array}{cc}{\sigma_{a}} & {\operatorname{cov}(a, b)} \\ {\operatorname{cov}(a, b)} & {\sigma_{b}}\end{array}\right]\right)
$$

2-dimensional  <br />
$$
f(x, y)=\frac{1}{2 \pi \sigma_{X} \sigma_{Y} \sqrt{1-\rho^{2}}} \exp
\left(-\frac{1}{2\left(1-\rho^{2}\right)}\left[\frac{\left(x-\mu_{X}\right)^{2}}{\sigma_{X}^{2}}+\frac{\left(y-\mu_{Y}\right)^{2}}{\sigma_{Y}^{2}}-\frac{2
\rho\left(x-\mu_{X}\right)\left(y-\mu_{Y}\right)}{\sigma_{X}
\sigma_{Y}}\right]\right)
$$

#### Reference
1. [multivariate normal
   distribution](https://en.wikipedia.org/wiki/Multivariate_normal_distribution)

