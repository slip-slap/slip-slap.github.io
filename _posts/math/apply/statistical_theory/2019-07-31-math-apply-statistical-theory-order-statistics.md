---
layout: post
title: "Statistics theory: order statistics"
keywords: []
description: 
category: "math"
tags: ["apply","P.A.S."]
---
{% include JB/setup %}


**Order Statistics**: Suppose now that $(X_1,\cdots, X_n)$ is a sample. In many
applications of statistics, we will have n data values where the assumption that
these arise as an i.i.d. sequence makes sense. It is often of interest, then, to
order these from smallest to largest to obtain the *order statistics:*

$$
X_{(1)}, \ldots, X_{(n)}
$$

Here, $X_{{i}}$ is equal to the $i$th smallest value in the sample $ X_{(1)},
\ldots, X_{(n)} $


**Example: Distribution of the sample maximum**
Suppose $X_1, X_2, \cdots, X_n$ are i.i.d.. so that $F_{X_1}=F_{X_2}=\cdots=F_{X_n}$.
Then the largest-order statistic $X_{(n)}=max(X_1, X_2, \cdots, X_n)$ is the
maximum of these n random variables.

Now $X_{(n)}$ is another random variable. What is its cumulative distribution
function? We see that $X_{(n)} \leq x$ if and only if $X_i \leq x$ for all $i$,
hence,

$$
\begin{aligned} F_{X_{(n)}}(x) &=P\left(X_{(n)} \leq x\right)=P\left(X_{1} \leq
x, X_{2} \leq x, \ldots, X_{n} \leq x\right) \\ &=P\left(X_{1} \leq x\right)
P\left(X_{2} \leq x\right) \cdots P\left(X_{n} \leq x\right)=F_{X_{1}}(x)
F_{X_{2}}(x) \cdots F_{X_{n}}(x) \\ &=\left(F_{X_{1}}(x)\right)^{n} .
\end{aligned}
$$.




