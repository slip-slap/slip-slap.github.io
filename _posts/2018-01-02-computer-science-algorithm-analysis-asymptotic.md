---
layout: post
title: "AA: Asymptotic"
keywords: []
description: ""
category: "CS"
tags: ["Algorithm","AA"]
---
{% include JB/setup %}

####
1. Big O notation is a mathematical notation that describes the limiting
   behavior of a function when the argument towards a particular value or
   infinity


#### Compare
$$
\begin{array}{c}f(n)=n^{2} \log n+n \\ 1 \times n^{2} \log n \leq n^{2} \log n+n
\leq 10\left(n^{2} \log n\right)\end{array}
$$
$$
O\left(n^{2} \log n\right) \Omega\left(n^{2} \log n\right)
$$
$$
\theta\left(n^{2} \log n\right)
$$

#### 
$$
f(n)=n !=n \times(n-1) \times(n-2) \times \cdots \times 3 \times 2 \times 1
$$

$$
1 \times 1 \times 1 \ldots \leq 1 \times 2 \times 3 \ldots \times n \leq n \times n \times n \times \times n
$$

$$
1 \leq n ! \leq n^{n}
$$

