---
layout: post
title: "C.O.: Lagrangian Duality"
keywords: []
description: ""
category: "math" 
tags: ["C.O.","apply"]
---
{% include JB/setup %}

#### Problem formulation

1. minimize $f_0(x)$
2. subject to $f_i(x) \leq 0, i=1, \cdots, m$
3. $h_i(x)=0,i=1, \cdots, p$

- we do not assume the problem is convex
- denote the optimal value by $p^*$

##### Idea
The basic idea in Lagrangian duality is to take the constraints into acount by
augmenting the objective function with a weighted sum of the constraint functions.
$
L(x, \lambda, \nu)=f_{0}(x)+\sum_{i=1}^{m} \lambda_{i} f_{i}(x)+\sum_{i=1}^{p} \nu_{i} h_{i}(x)
$

-  we refer to $\lambda_i$ as Lagrange multiplier associated with the ith
   inequality constraint  $f_i(x) \leq 0$
