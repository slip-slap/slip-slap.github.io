---
layout: post
title: "Algebraic Topology: Simplex"
keywords: []
description: ""
category: "math"
tags: ["structure"]
---
{% include JB/setup %}

#### Definition
In geometry, a simplex(plural: simplexes or simplices) is a generalization of
the notion of a triangle or tetrahedron to artitrary dimensions. <br />
1. a 0-simplex is a point
2. a 1-simplex is a line segment
3. a 2-simplex is a triangle
4. a 3-simplex is a tetrahedron

#### Boundary

$$
\begin{aligned} \partial(S) &=\left(v_{0} v_{1}\right)+\left(v_{1}
v_{2}\right)+\left(v_{2} v_{0}\right) \\ &=\left(v_{0} v_{1}\right)-\left(v_{0}
v_{2}\right)+\left(v_{1} v_{2}\right) \\ &=\sum_{i=0}^{2}(-1)^{i}\left(v_{0}
\cdots \hat{v}_{i} \cdots v_{i}\right) \end{aligned}
$$ <br />
where hats means omit.

