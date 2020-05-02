---
layout: post
title: "P.A.S.M.: Simulating Probability Distributions"
keywords: ["probabiltiy"]
description: ""
category: "math"
tags: ["apply","P.A.S.M."]
---
{% include JB/setup %}

#### Solution
1. Let X be a random variable, with cululative distribution function F. Then the
inverse cdf(or quantile function) of X is the function $F^-1$ defined by <br />
$F^{-1} (t)=min{x: F(x) \geq t}$ <br />
for $0<t<1$
2. Let F be any cumulative distribution function, and let $U \sim Uniform
   [0,1]$. Define a random variable Y by $Y=F^{-1}(U)$. Then $P(Y \leq
   y)=F(y)$,i.e., Y has cumulative distribution function given by F.

#### Example
$$
F(x)=\int_{0}^{x} e^{-t} d t=1-e^{-x}
$$
<br />
$$
\begin{aligned} F^{-1}(t) &=\min \{x: F(x) \geq t\}=\min \left\{x: 1-e^{-x} \geq
t\right\} \\ &=\min \{x: x \geq-\ln (1-t)\}=-\ln (1-t)=\ln (1 /(1-t))
\end{aligned}
$$




#### Galois
1. As you can see, the most important idea to solve this problem is to define a
   **fantastic random variable**.


