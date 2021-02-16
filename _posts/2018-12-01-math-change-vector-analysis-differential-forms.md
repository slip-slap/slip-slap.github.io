---
layout: post
title: "V.A.: Integration with differential forms"
keywords: [ ""]
description: ""
category: "math"
tags: ["change","V.A."]
---
{% include JB/setup %}

#### 1. Idea
Every integral evolves:
- a path
- a covector field(differential form)


#### 2. Example: single variable

$$
\int_{0}^{2}(-6 x+4) d x
=\int_{0}^{2} \frac{d F}{d x} d x
= \int_{0}^{2} d F
$$

$$
\begin{array}{l}\frac{d F}{d x}=-6 x+4 \\ F(x)=-3 x^{2}+4 x+c\end{array}
$$

#### 2. Example: two variables

$$
\int_{P} y d x+x d y
$$

$$
\begin{array}{l}P(t), t \in[0,2] \\ \left(x=\frac{1}{2} t+1, y=\frac{3}{2}
t-1\right)\end{array}
$$

$$
\begin{array}{l}\int_{P} d F \quad d F=\frac{\partial F}{\partial x} d
x+\frac{\partial F}{\partial y} d y \\ =\int_{P} \frac{\partial F}{\partial x} d
x+\frac{\partial F}{\partial y} d y\end{array}
$$

$$
\begin{array}{l}\frac{\partial F}{\partial x}=y \\ \frac{\partial F}{\partial
y}=x\end{array} \quad F(x, y)=x y+c
$$


#### 3. Galois
1. Treat the integration in a different perspective.
2. A path and a covector field
3. Differential forms are approach to multivariable calculus that is independent
   of coordinates. Differential forms provide a unified approach to define
   integrands over curves, surfaces, solids, and higher-dimensional manifolds.

