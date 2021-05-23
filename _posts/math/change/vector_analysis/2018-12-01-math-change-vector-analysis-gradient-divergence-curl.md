---
layout: post
title: "V.A.: Delta Operator and Gradient"
keywords: []
description: ""
category: "math"
tags: ["change","V.A."]
---
{% include JB/setup %}

#### Definition
1. Gradient: let $\phi(x,y,z)$ be defined and differentiable at each point
   $(x,y,z)$ in a certain region of space(i.e. $\phi$ defines a differentiable
   scalar field). Then the gradient of $\phi$, written $\nabla \phi$ or grad
   $\phi$

$
\nabla \phi=\left(\frac{\partial}{\partial x}
\mathbf{i}+\frac{\partial}{\partial y} \mathbf{j}+\frac{\partial}{\partial z}
\mathbf{k}\right) \phi = 
\frac{\partial \phi}{\partial x} \mathbf{i} +\frac{\partial \phi}{\partial
y} \mathbf{j}+\frac{\partial \phi}{\partial z} \mathbf{k}
$


2. $\textbf{THE CURL}$: if $\mathbf{V} (x,y,z)$ is a differentiable vector field
   then the curl or rotation of $\mathbf{V}$, written $\nabla \times
   \mathbf{V}$, curl $\mathbf{V}$ or rot $\mathbf{V}$, is defined by
   $
   \nabla \times \mathbf{v}=\left(\frac{\partial}{\partial x}
   \mathbf{i}+\frac{\partial}{\partial y} \mathbf{j}+\frac{\partial}{\partial z}
   \mathbf{k}\right) \times\left(V_{1} \mathbf{i}+V_{2} \mathbf{j}+V_{3}
   \mathbf{k}\right)
	=\left|\begin{array}{ccc}\mathbf{i} & \mathbf{j} & \mathbf{k} \\
	\frac{\partial}{\partial x} & \frac{\partial}{\partial y} &
	\frac{\partial}{\partial z} \\ V_{1} & V_{2} & V_{3}\end{array}\right|
	$


 



















#### Delta Operator and Gradient
$$
\nabla f=\left\langle\frac{\partial}{\partial x} f, \frac{\partial}{\partial y}
f, \frac{\partial}{\partial z} f\right\rangle
$$

#### Example of Vector and Covector
1. $\nabla {f}$ obtains a vector
2. $df$  obtains a covector
- For a very very long time, I just can't understand why $df$ is a covector,
  because as soon as I see the sign $df$, the expression such as $$3dx+5dy+6dz$$
  come into my mind, that's the form of $$df$$, that's calculation process of
  $df$, you should focus on the result of the $df$, it's just a number.


#### Visulization 
<img src="{{IMAGE_PATH}}/math-change-tensor-delta-operator-and-gradient.png"
height="200" width="400">

$$
d f(\vec{v})=\nabla_{\vec{v}} f=\nabla f \cdot \vec{v}
$$
