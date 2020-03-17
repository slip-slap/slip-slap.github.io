---
layout: post
title: "Tensor: Covector"
keywords: [ ""]
description: ""
category: "math"
tags: ["change","Tensor"]
---
{% include JB/setup %}



#### Covector
A covector(row vector) is a function that takes a vector and produces a scalar.
1. Covectors are invarient, covector component are not invariant.

two special covectors:


#### Covector Visualization
This visualization is really nice because we don't need to know everything about
coordinate systems or components in order to understand how a covector acts on 
a vector.



#### Linear Map
1. Coordinate Definition: Matrics are the coordinate interpretation of linear
   maps.
2. Geometric Definition: keep lines parallel, keep lines evenly spaced, keep the
   origin stationary.
3. Abstract Algebra  Definition


#### Tensor Notation
$$
T_{r s t \dots}^{i j k \ldots}
$$
1. m denotes contravarient indexes and n denotes covariant indexes
2. we call T as (m,n)-tensor



#### Einstein Summation Convention
$$
\begin{aligned} \sum_{v=1}^{n} A_{\mu v} v_{v} & \rightarrow A_{\mu v} v_{v} \\
\sum_{\beta=1}^{n} \sum_{\gamma=1}^{n} A_{\alpha \beta} B_{\beta \gamma}
C_{\gamma \delta} & \rightarrow A_{\alpha \beta} B_{\beta \gamma} C_{\gamma
\delta} \end{aligned}
$$

#### Delta Operator and Gradient
$$
\nabla f=\left\langle\frac{\partial}{\partial x} f, \frac{\partial}{\partial y}
f, \frac{\partial}{\partial z} f\right\rangle
$$

#### Example of Vector and Covector
1. $\nabla {f}$ obtains a vector
2. $df$  obtains a covector



####  Diverence Notation
$$
\begin{aligned} \nabla \cdot \vec{f} &=\left\langle\frac{\partial}{\partial
x_{1}}, \frac{\partial}{\partial x_{2}}, \frac{\partial}{\partial
x_{3}}\right\rangle \cdot\left\langle f_{1}, f_{2}, f_{3}\right\rangle \\
&=\frac{\partial}{\partial x_{1}}\left(f_{1}\right)+\frac{\partial}{\partial
x_{2}}\left(f_{1}\right)+\frac{\partial}{\partial x_{3}}\left(f_{3}\right) \\
&=\partial_{1} f_{1}+\partial_{2} f_{2}+\partial_{3} f_{2} \end{aligned}
$$


#### Galois 




