---
layout: post
title: "Tensor: Calculus"
keywords: [ ""]
description: ""
category: "math"
tags: ["change"]
---
{% include JB/setup %}

#### HH
Tensor calculus study how tensors change over space, according to the following
tensors in the picture, if we choose a coordinate system, we can measure the
components.
<img src="{{IMAGE_PATH}}/math-change-tensor-calculus.png" >

#### derivative


$$
\frac{\partial c_{i}}{\partial p_{j}} \frac{\partial p_{j}}{\partial
c_{k}}=\frac{d c_{i}}{d c_{k}}=\left\{\begin{array}{l}{0 \text { if } i \neq k}
\\ {1 i f i=k}\end{array}=\delta_{k}^{i}\right.
$$


#### Assumption
Basic Vectors are equal to partial derivatives, which means:
$$
\begin{array}{l}{\frac{\partial \vec{R}}{\partial x}=\vec{e}_{x}} \\
{\frac{\partial \vec{R}}{\partial y}=\vec{e}_{y}}\end{array}
$$


Vector field along a curve.
<img src="{{IMAGE_PATH}}/math-change-tensor-calculus-derivative.png" >


$$
\frac{d \vec{R}}{d \lambda}=\frac{d x}{d \lambda} \frac{\partial
\vec{R}}{\partial x}+\frac{d y}{d \lambda} \frac{\partial \vec{R}}{\partial
y}=\frac{d r}{d \lambda} \frac{\partial \vec{R}}{\partial r}+\frac{d \theta}{d
\lambda} \frac{\partial \vec{R}}{\partial \theta}
$$

#### Gradient of a Function

<img src="{{IMAGE_PATH}}/math-change-tensor-calculus-gradient.png" >

#### Directional Derivative
The directional derivative generalize the concept of partial derivative in any
direction.
<img src="{{IMAGE_PATH}}/math-change-tensor-calculus-directional-derivative.png" >


#### Differential Form
$d f(\vec{v})$ is the directional derivative $
d f(\vec{v})=\nabla_{\vec{v}} f
$
geometrical interpretation which means the function $f$ moving through a point
with velocity vector $\vec{v}$ 


#### Galois
when you learn more about calculus, you get a lot insight into derivative.



