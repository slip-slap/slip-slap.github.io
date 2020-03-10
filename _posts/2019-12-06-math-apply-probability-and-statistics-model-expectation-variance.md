---
layout: post
title: "P.A.S.M: Expectation and Variance"
keywords: [""]
description: ""
category: "math"
tags: ["apply"]
---
{% include JB/setup %}


1.$E[X]=\int F_X^c(x)dx$ for arbitrary nonneg X

<img src="{{IMAGE_PATH}}/math-apply-probability-and-statistics-expectation.png" />

#### Poisson Distribution
$$
P(X(t)=k)=\frac{(\lambda t)^{k} e^{-\lambda t}}{k !}
$$

For the probability of the number of events happen equal to 0 
$$
P(X>t)=\frac{(\lambda t)^{0} e^{-\lambda t}}{0 !}=e^{-\lambda t}
$$

$$
P(X<=t)=1-e^{-\lambda t}
$$

$$
f(t)=\lambda e^{-\lambda t}
$$

Expectation:
$$
E(X)=\int_{-\infty}^{\infty}|x| f(x) d x=\int_{0}^{\infty} x f(x) d
x=\int_{0}^{\infty} x \cdot \lambda e^{-\lambda x} d x=\frac{1}{\lambda}
\int_{0}^{\infty} \lambda x e^{-\lambda x} d \lambda x
$$





#### Reference
1. [指数分布的期望和方差CSDN](https://blog.csdn.net/saltriver/article/details/53982885)
