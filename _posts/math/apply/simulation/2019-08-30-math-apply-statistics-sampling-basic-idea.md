---
layout: post
title: "Statistics: basic idea in sampling"
keywords: ["probabiltiy"]
description: ""
category: "math"
tags: ["apply","P.A.S.","statistics"]
---
{% include JB/setup %}


#### 1 The idea from two cases

#### 1.1  Discrete random variable

**Theorem**: Let p be a probability function for a discrete probability
distribution. Let $x_1 < x_2 < x_3 < \cdots$ be all the values for which 
$p(x_i) > 0$.
 
Let $U_1 ~ \text\{Uniform}\[0,1\]$.  Define Y by

$$
Y=\min \left\{x_{j}: \sum_{k=1}^{j} p\left(x_{k}\right) \geq U_{1}\right\}
$$

Then Y is a discrete random variable, having probability function $p$.


**Proof**: 

$$
\begin{aligned} P\left(Y=x_{i}\right) &=P\left(\sum_{k=1}^{i-1}
p\left(x_{k}\right)<U_{1}, \text { and } \sum_{k=1}^{i} p\left(x_{k}\right) \geq
U_{1}\right) \\ &=P\left(\sum_{k=1}^{i-1} p\left(x_{k}\right)<U_{1} \leq
\sum_{k=1}^{i} p\left(x_{k}\right)\right) \\ &=\sum_{k=1}^{i}
p\left(x_{k}\right)-\sum_{k=1}^{i-1} p\left(x_{k}\right)=p\left(x_{i}\right) .
\end{aligned}
$$


##### 1.2 Continueous random variable

**Definition:** Let X be a random variable, with cumulative distribution
function F. Then the inverse cdf of X is the function $F^{-1}$ defined by

$$
F^{-1}(t)=\min \{x: F(x) \geq t\}
$$

For $0 < t < 1$.



##### Remark
It will be more clearly by taking a look at the cdf of a normal distribution. 
If we randomly chose a point on the x axis, the corresponding y value on the
curve will be the value of original random variable. 

The corresponding random variable value of the interval corresponding to the
segment on the x axis from 0.2 to 0.8 lies between -1 and 1. Because x has
uniform distribution on the interval $\[0,1\]$, the corresponding value of
random variable would be between -1 and 1.

<img
src="{{IMAGE_PATH}}/statistics/statistics-basic-idea-in-simulation-inverse-cdf-normal-distribution.png" height="" width="" />


#### Solution
1. Let X be a random variable, with cululative distribution function F. Then the
inverse cdf(or quantile function) of X is the function $F^-1$ defined by 
$F^{-1} (t)=min\{x: F(x) \geq t\}$.
for $0<t<1$
2. Let F be any cumulative distribution function, and let $U \sim Uniform
   [0,1]$. Define a random variable Y by $Y=F^{-1}(U)$. Then $P(Y \leq
   y)=F(y)$,i.e., Y has cumulative distribution function given by F.

#### Example
$$
F(x)=\int_{0}^{x} e^{-t} d t=1-e^{-x}
$$

$$
\begin{aligned} F^{-1}(t) &=\min \{x: F(x) \geq t\}=\min \left\{x: 1-e^{-x} \geq
t\right\} \\ &=\min \{x: x \geq-\ln (1-t)\}=-\ln (1-t)=\ln (1 /(1-t))
\end{aligned}
$$




#### Galois
1. As you can see, the most important idea to solve this problem is to define a
   **fantastic random variable**.
2. The reason that some equation confuses me is the way of thinking, putting the
   most important things in front.


