---
layout: post
title: "V.A.: Covector"
keywords: []
description: ""
category: "math"
tags: ["change","V.A."]
---
{% include JB/setup %}

#### Covector
Definition: A covector(row vector) is a function that takes a vector and
produces a scalar.
- Covectors are invarient, they are purely geometrical objects. 
- Covector component are not invariant, it's depend on what coordinate system
  that you use.


#### Covector Component
$$
\begin{array}{ll}\epsilon^{1}(\overrightarrow{e_{1}})=1 &
\epsilon^{1}(\overrightarrow{e_{2}})=0 \\ \epsilon^{2}(\overrightarrow{e_{1}})=0
& \epsilon^{2}(\overrightarrow{e_{2}})=1\end{array}
$$
- In a more concise way
$$
\epsilon^{i}(\overrightarrow{e_{j}})=\delta_{i j}=\left\{\begin{array}{l}1 \text
{ if } i=j \\ 0 \text { if } i \neq j\end{array}\right.
$$

#### inference
$$
\epsilon^{1}(\vec{v})=\epsilon^{1}\left(v^{1} \overrightarrow{e_{1}}+v^{2}
\overrightarrow{e_{2}}\right)=v^{1} \epsilon^{1}(\overrightarrow{e_{1}})+v^{2}
\epsilon^{1}(\overrightarrow{e_{2}})
$$

$$
\epsilon^{2}(\vec{v})=\epsilon^{2}\left(v^{1} \overrightarrow{e_{1}}+v^{2}
\overrightarrow{e_{2}}\right)=v^{1} \epsilon^{2}(\overrightarrow{e_{1}})+v^{2}
\epsilon^{2}(\overrightarrow{e_{2}})=v^{2}
$$

$$
\begin{array}{l}\alpha(\vec{v})=\alpha\left(v^{1} \overrightarrow{e_{1}}+v^{2}
\overrightarrow{e_{2}}\right)=v^{1} \alpha(\overrightarrow{e_{1}})+v^{2}
\alpha(\overrightarrow{e_{2}}) \\ \text { Remember: }
\epsilon^{1}(\vec{v})=v^{1} \quad \epsilon^{2}(\vec{v})=v^{2} \\
\alpha(\vec{v})=\epsilon^{1}(\vec{v})
\alpha(\overrightarrow{e_{1}})+\epsilon^{2}(\vec{v})
\alpha(\overrightarrow{e_{1}}) \\ \text { Define: }
\alpha(\overrightarrow{e_{1}})=\alpha_{1} \quad
\alpha(\overrightarrow{e_{2}})=\alpha_{2} \\ \alpha(\vec{v})=\alpha_{1}
\epsilon^{1}(\vec{v})+\alpha_{2} \epsilon^{2}(\vec{v})\end{array}
$$
$$
\alpha=\alpha_{1} \epsilon^{1}+\alpha_{2} \epsilon^{2}
$$

\begin{aligned} d f(\vec{v})=\nabla f \cdot \vec{v} &=\left((\nabla f)^{i}
\overrightarrow{e_{i}}\right) \cdot\left(v^{j} \overrightarrow{e_{j}}\right) \\
&=(\nabla f)^{i} v^{j}(\overrightarrow{e_{i}} \cdot \overrightarrow{e_{j}}) \\
&=(\nabla f)^{i} v^{j} g_{i j} \end{aligned}

##### Examples
1. Integration and differention operation is a covector, because after the
   process, you get a real number.


#### Covector Visualization
This visualization is really nice because we don't need to know everything about
coordinate systems or components in order to understand how a covector acts on 
a vector.
- The idea is beautiful, but if you don't understand what is a covector in
  nature, this visualization is complete a disaster for you.



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




