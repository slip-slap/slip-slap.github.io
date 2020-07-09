---
layout: post
title: "V.A.: Vector"
keywords: [ ""]
description: ""
category: "math"
tags: ["change","V.A."]
---
{% include JB/setup %}


#### HH
Because vector components behave contrary to the basis vectors, we say that 
vector components are contra-variant 

The following is how basic and component transformation in different coordinate
system.
<img src="{{IMAGE_PATH}}/math-change-tensor-vector-compontent.png" height="150"
width="300" />

Notation, in order to remind the component is contravarient to the basic,
so using the following summation.
<img src="{{IMAGE_PATH}}/math-change-tensor-summation1.png" height="150"
width="300" />


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


### Notation

#### Einstein Summation Convention
$$
\begin{aligned} \sum_{v=1}^{n} A_{\mu v} v_{v} & \rightarrow A_{\mu v} v_{v} \\
\sum_{\beta=1}^{n} \sum_{\gamma=1}^{n} A_{\alpha \beta} B_{\beta \gamma}
C_{\gamma \delta} & \rightarrow A_{\alpha \beta} B_{\beta \gamma} C_{\gamma
\delta} \end{aligned}
$$




####  Diverence Notation
$$
\begin{aligned} \nabla \cdot \vec{f} &=\left\langle\frac{\partial}{\partial
x_{1}}, \frac{\partial}{\partial x_{2}}, \frac{\partial}{\partial
x_{3}}\right\rangle \cdot\left\langle f_{1}, f_{2}, f_{3}\right\rangle \\
&=\frac{\partial}{\partial x_{1}}\left(f_{1}\right)+\frac{\partial}{\partial
x_{2}}\left(f_{1}\right)+\frac{\partial}{\partial x_{3}}\left(f_{3}\right) \\
&=\partial_{1} f_{1}+\partial_{2} f_{2}+\partial_{3} f_{2} \end{aligned}
$$

#### Lapalacian


#### Galois 
1. In our subject of differential geometry, where you talk about manifolds, one
difficulty is that the geometry is described by coordinates, **but the coordinates
do not have meaning, coordinates do not have meaning**, that's why a lot of
mathematican refuse to use coordinate to solve geometry problem. **because
coordinates means nothing**, in order to handle this kind of situation, an
important tool is so-called tensor analysis, or Ricci calculus.

2. Compared with coordinates, vector is completely different. The exists of
coordinates depends on what kind of coordinates you choose. But **Vector
actually is a geometry concept, which does not depend the coordinates you choose
,They are alwasy being there**, to generalize the invariant property, we called
this tensors. **In nature, they are used, analogusly,  to describe the invariant
property of geometry**


#### Reference
1. [Tensor Calculus](https://en.wikipedia.org/wiki/Tensor_calculus)
2. [绝对积分](https://wenku.baidu.com/view/91fddd26b307e87100f69645.html)

