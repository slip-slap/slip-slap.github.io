---
layout: post
title: "D.G.: Geodesic and Christoffel Symbol"
keywords: ["history"]
description: ""
category: "math"
tags: ["space","D.G."]
---
{% include JB/setup %}

#### What is the motivation behind this idea?
1. this try to generalize the concept of straight line, but does this exist?
- A geodesic is the path that would be followed by a small car stuck to the
  surface,  with its wheels always pointing directly forward, and with the
  wheels on the left side and right side of the car always rotating at the same
  speed.

2. One common misconception is that every geodesic is the shortest path between two points.
- It is true only we zoom in and look at two very closely neighbouring points
  on a geodesic that the geodesic is the shortest path between them.



#### Introduction
Geodesic are curves where the acceleration vector is normal to the surface.
#### Algebraic implementation

$$
\frac{d^{2} \vec{R}}{d \lambda^{2}}=\left(\frac{d^{2} \vec{R}}{d
\lambda^{2}}\right)^{n o r m a l}+\left(\frac{d^{2} \vec{R}}{d
\lambda^{2}}\right)^{t a n g e n t i a l}
$$
<br />
$$
\frac{d \vec{R}}{d \lambda}=\frac{d u}{d \lambda} \frac{\partial
\vec{R}}{\partial u}+\frac{d v}{d \lambda} \frac{\partial \vec{R}}{\partial v}
$$
<br />
$$
\begin{aligned} \frac{d}{d \lambda}\left(\frac{d \vec{R}}{d \lambda}\right)
&=\frac{d}{d \lambda}\left(\frac{d u}{d \lambda} \frac{\partial
\vec{R}}{\partial u}+\frac{d v}{d \lambda} \frac{\partial \vec{R}}{\partial
v}\right) \\ &=\frac{d}{d \lambda}\left(\frac{d u}{d \lambda} \frac{\partial
\vec{R}}{\partial u}\right)+\frac{d}{d \lambda}\left(\frac{d v}{d \lambda}
\frac{\partial \vec{R}}{\partial v}\right) \\ &=\frac{d^{2} u}{d \lambda^{2}}
\frac{\partial \vec{R}}{\partial u}+\frac{d u}{d \lambda}\left(\frac{d}{d
\lambda} \frac{\partial \vec{R}}{\partial u}\right)+\frac{d^{2} v}{d
\lambda^{2}} \frac{\partial \vec{R}}{\partial v}+\frac{d v}{d
\lambda}\left(\frac{d}{d \lambda} \frac{\partial \vec{R}}{\partial v}\right)
\end{aligned}
$$
<br />

$$
\begin{aligned} \frac{d}{d \lambda} \frac{\partial \vec{R}}{\partial u}
&=\left(\frac{d u}{d \lambda} \frac{\partial}{\partial u}+\frac{d v}{d \lambda}
\frac{\partial}{\partial v}\right) \frac{\partial \vec{R}}{\partial u} \\
&=\frac{d u}{d \lambda} \frac{\partial^{2} \vec{R}}{\partial u^{2}}+\frac{d v}{d
\lambda} \frac{\partial^{2} \vec{R}}{\partial u \partial v} \\ \frac{d}{d
\lambda} \frac{\partial \vec{R}}{\partial v} &=\left(\frac{d u}{d \lambda}
\frac{\partial}{\partial u}+\frac{d v}{d \lambda} \frac{\partial}{\partial
v}\right) \frac{\partial \vec{R}}{\partial v} \\ &=\frac{d u}{d \lambda}
\frac{\partial^{2} \vec{R}}{\partial v \partial u}+\frac{d v}{d \lambda}
\frac{\partial^{2} \vec{R}}{\partial v^{2}} \end{aligned}
$$
<br />

$$
\begin{array}{l}{\frac{d^{2} \vec{R}}{d \lambda^{2}}=\frac{d^{2} u}{d
\lambda^{2}} \frac{\partial \vec{R}}{\partial u}+\frac{d^{2} v}{d \lambda^{2}}
\frac{\partial \vec{R}}{\partial v}} \\ {\quad+\left(\frac{d u}{d
\lambda}\right)^{2} \frac{\partial^{2} \vec{R}}{\partial u^{2}}+\frac{d u}{d
\lambda} \frac{d v}{d \lambda} \frac{\partial^{2} \vec{R}}{\partial u \partial
v}+\frac{d v}{d \lambda} \frac{d u}{d \lambda} \frac{\partial^{2}
\vec{R}}{\partial v \partial u}+\left(\frac{d v}{d \lambda}\right)^{2}
\frac{\partial^{2} \vec{R}}{\partial v^{2}}}\end{array}
$$
<br />
$$
\frac{d^{2} \vec{R}}{d \lambda^{2}}=\frac{d^{2} u^{i}}{d \lambda^{2}}
\frac{\partial \vec{R}}{\partial u^{i}}+\frac{d u^{i}}{d \lambda} \frac{d
u^{j}}{d \lambda} \frac{\partial^{2} \vec{R}}{\partial u^{i} \partial u^{j}}
$$
<br />
$$
\frac{\partial^{2} \vec{R}}{\partial u^{i} \partial u^{j}}=\Gamma_{i j}^{1}
\frac{\partial \vec{R}}{\partial u^{1}}+\Gamma_{i j}^{2} \frac{\partial
\vec{R}}{\partial u^{2}}+L_{i j} \hat{n}
$$
<br />



#### Galois
1. [Geodesic youtube](https://www.youtube.com/watch?v=NfqrCdAjiks)



