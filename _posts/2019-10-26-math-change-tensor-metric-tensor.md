---
layout: post
title: "Tensor: Metric Tensor"
keywords: [ ""]
description: ""
category: "math"
tags: ["change","Tensor"]
---
{% include JB/setup %}

#### Metric Tensor

Metric tensor is used to measure the length of vector. **Please remember the
following picture** 
$$
g_{\vec{e}_{i}}=\left[\begin{array}{ll}{\overrightarrow{e_{1}} \cdot
\overrightarrow{e_{1}}} & {\overrightarrow{e_{1}} \cdot \overrightarrow{e_{2}}}
\\ {\overrightarrow{e_{2}} \cdot \overrightarrow{e_{1}}} &
{\overrightarrow{e_{2}} \cdot
\overrightarrow{e_{2}}}\end{array}\right]_{\overrightarrow{e_{i}}}
$$

#### Obtain
$$
\begin{array}{l}{\text {arc length}=\lim _{\Delta t \rightarrow 0} \sum_{i}
\frac{\left\|\vec{R}\left(t_{i+1}\right)-\vec{R}\left(t_{i}\right)\right\|}{\Delta
t} \Delta t} \\ {\text {arclength}=\int\left\|\frac{d \vec{R}}{d t}\right\| d
t}\end{array}
$$



#### Arc Length
$$
\begin{aligned}\left\|\frac{d \vec{R}}{d \lambda}\right\|^{2} &=\frac{d
\vec{R}}{d \lambda} \cdot \frac{d \vec{R}}{d \lambda} \\ &=\left(\frac{\partial
\vec{R}}{\partial x} \frac{d x}{d \lambda}+\frac{\partial \vec{R}}{\partial y}
\frac{d y}{d \lambda}\right) \cdot\left(\frac{\partial \vec{R}}{\partial x}
\frac{d x}{d \lambda}+\frac{\partial \vec{R}}{\partial y} \frac{d y}{d
\lambda}\right) \\ &=\left(\frac{d x}{d \lambda}\right)^{2}\left(\frac{\partial
\vec{R}}{\partial x} \cdot \frac{\partial \vec{R}}{\partial x}\right)+2 \frac{d
x}{d \lambda} \frac{d y}{d \lambda}\left(\frac{\partial \vec{R}}{\partial x}
\cdot \frac{\partial \vec{R}}{\partial y}\right)+\left(\frac{d y}{d
\lambda}\right)^{2}\left(\frac{\partial \vec{R}}{\partial y} \cdot
\frac{\partial \vec{R}}{\partial y}\right) \end{aligned}
$$ <br />
Just  the same as: <br />
$$
\begin{aligned}\|\vec{v}\|^{2} &=\vec{v} \cdot \vec{v} \\ &=\left(v^{1}
\overrightarrow{e_{1}}+v^{2} \overrightarrow{e_{2}}\right) \cdot\left(v^{1}
\overrightarrow{e_{1}}+v^{2} \overrightarrow{e_{2}}\right) \\
&=\left(v^{1}\right)^{2}(\overrightarrow{e_{1}} \cdot \overrightarrow{e_{1}})+2
v^{1} v^{2}(\overrightarrow{e_{1}} \cdot
\overrightarrow{e_{2}})+\left(v^{2}\right)^{2}(\overrightarrow{e_{2}} \cdot
\overrightarrow{e_{2}}) \end{aligned}
$$

Einstein Notation  $c^1=x, c^2=y$<br />
$$
\begin{aligned}\left\|\frac{d \vec{R}}{d \lambda}\right\|^{2} &=\frac{d
\vec{R}}{d \lambda} \cdot \frac{d \vec{R}}{d \lambda} \\ &=\left(\frac{d c}{d
\lambda} \frac{\partial \vec{R}}{\partial c^{i}}\right) \cdot\left(\frac{d
c^{j}}{d \lambda} \frac{\partial \vec{R}}{\partial c^{j}}\right) \\ &=\frac{d
c^{i}}{d \lambda} \frac{d c^{j}}{d \lambda}\left(\frac{\partial
\vec{R}}{\partial c^{i}} \cdot \frac{\partial \vec{R}}{\partial c^{j}}\right)
\end{aligned}
$$



