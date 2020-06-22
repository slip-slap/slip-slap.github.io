---
layout: post
title: "Tensor: Kronecker Delta"
keywords: [ ""]
description: ""
category: "math"
tags: ["change","Tensor"]
---
{% include JB/setup %}

#### Definition 
$$
\delta_{i j}=\left\{\begin{array}{ll}{0} & {\text { if } i \neq j} \\ {1} &
{\text { if } i=j}\end{array}\right.
$$

#### Example 
The inner product of vector: <br />
$$
\mathbf{a} \cdot \mathbf{b}=\sum_{i, j=1}^{n} a_{i} \delta_{i j} b_{j}
$$

For example: <br />
$$
a=\sum_{i j} a_{i} c_{j} \delta_{i j}=b_1 c_1 \delta_{11}+b_1 c_2 \delta_{12}
b_2 c_1 \delta_{21}+b_2 c_2 \delta_{22}
$$ <br />
where $\delta_{12}$ and $\delta_{21}$ are zeros



#### Properties 
$$
\begin{aligned} \sum_{j} \delta_{i j} a_{j} &=a_{i} \\ \sum_{i} a_{i} \delta_{i
j} &=a_{j} \\ \sum_{k} \delta_{i k} \delta_{k j} &=\delta_{i j} \end{aligned}
$$
- for the third formula, maybe you need spent a little time to think about it,
  but it's not that difficult. for the two items, we only need consider about
  the first term $$\delta_{i k}$$ is when i equals to k, so we only have
  $$\delta_{i i}$$, it's the same rule, we have only $$\delta_{j j}$$, so what's
  the result of $$
  \delta_{i i} \delta_{j j}
  $$

- it can also be treated as an identity matrix

#### Galois
1. Why we invent this sign, becasue it can used to express our equation in a
   more compact and concise way, just like matrix, without any linear algebra
   background, you can just treat matrix sign, as a more efficient and compact
   way for expressions

#### Reference
1. [kronecker delta-wiki](https://en.wikipedia.org/wiki/Kronecker_delta#Definitions_of_the_generalized_Kronecker_delta)
