---
layout: post
title: "S.P.: random walk"
keywords: []
description: 
category: "math"
tags: ["apply","S.P."]
---
{% include JB/setup %}


**Theorem:** Let ${X_n}$ be simple random walk as before, and let $n$ be a
positive integer. If K is an integer such that $-n \leq k \leq n$ and $n+k$ is
even, then
$$
P\left(X_{n}=a+k\right)=\left(\begin{array}{c}n \\
\frac{n+k}{2}\end{array}\right) p^{(n+k) / 2} q^{(n-k) / 2}
$$

For all other values of $k$, we have $P(X_n=a+k)=0$. Furthmore, $E(X_n)=a+n(2p-1)$
