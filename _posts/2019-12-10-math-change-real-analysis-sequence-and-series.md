---
layout: post
title: "R.A.: Series--Function Representation"
keywords: []
description: ""
category: "math"
tags: ["change","R.A."]
---
{% include JB/setup %}

#### Sequence
a sequence is a function with a domain equal to the set of positive integers.  
- Monotone convergence theorem: if a sequence is increasing and bounded above by a supremum, then the sequence will converge to the supremum.


#### Series
a series is a list of numbers with addition operations between them.

#### convergence of sequence
As for sequence of functions, and unlike for series of numbers, there exist man types of convergence for a function series, such as
uniform convergence, pointwise convergence, almost everywhere convergence.

1. uniform convergence: uniform convergence implies pointwise convergence, but not the other way around.
2. almost everywhere convergence: A weakened version of pointwise convergence hypothesis which states that, for X a measure space,

#### method of determining whether a series converges or divergs

1. comparsion test
2. ration test
3. root test

#### Function series
Function series: a function series is a series, where summands are not just real or complex numbers but functions



#### P Series

$$
\sum_{n=1}^{\infty} \frac{1}{n^{p}}
$$

#### Harmonic Series

#### Power Series

$$
\sum_{n=0}^{\infty} a_{n}(x-c)^{n}=a_{0}+a_{1}(x-c)^{1}+a_{2}(x-c)^{2}+\cdots
$$


#### Taylor Series
Taylor Series: a representation of a function as an infinite sum of terms that are calculated from the values of the function's derivative at 
a single point.

#### Thinking
Taylor expansion is very interesting, a function can be represents by a sum of terms <br />
**what do these terms stand for?**
1. The shape of a curve is decide by its derivative
2. Assumed a point on the curve, the position of the following point on the curve is decided by the derivative of the current point.
3. the shape of the function of derivative is decided by the second order derivative of the current point. 
4. ..., and so on
5. So we can represent the function with Taylor expansion. This is amazing!!!



#### Reference
1. [uniform convergence and pointwise convergence](http://www.math.wisc.edu/~angenent/521.2017s/UniformConvergence.html)
2. [almost everywhere convergence](http://mathworld.wolfram.com/AlmostEverywhereConvergence.html)
