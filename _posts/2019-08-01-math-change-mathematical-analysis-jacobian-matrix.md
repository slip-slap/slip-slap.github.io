---
layout: post
title: "M.A.: Jacobian Matrix"
keywords: []
description: ""
category: "math"
tags: ["change","M.A."]
---
{% include JB/setup %}

#### Jacobian matrix
 Matrices are transformations of space 

#### formula
1. one dimensional Jacobian <br />
$$
\int_{a}^{b} f(x) \mathrm{d} x=\int_{\alpha}^{\beta} f(x(u)) \frac{\mathrm{d}
x}{\mathrm{d} u} \mathrm{d} u
$$

2. two dimensional Jacobian <br />
$$
\iint_{R} f(x, y) \mathrm{d} x \mathrm{d} y=\iint_{R^{\prime}} f(x(u, v), y(u,
v))\left|\frac{\partial(x, y)}{\partial(u, v)}\right| \mathrm{d} u \mathrm{d} v
$$

3. three dimensional Jacobian <br />
$$
\iiint_{V} f(x, y, z) \mathrm{d} x \mathrm{d} y \mathrm{d} z=\iiint_{V^{\prime}}
F(u, v, w)\left|\frac{\partial(x, y, z)}{\partial(u, v, w)}\right| \mathrm{d} u
\mathrm{d} v \mathrm{d} w $$

where 
$$ \frac{\partial(x, y, z)}{\partial(u, v, w)}=\left|\begin{array}{lll}{x_{u}} &
{x_{v}} & {x_{w}} \\ {y_{u}} & {y_{v}} & {y_{w}} \\ {z_{u}} & {z_{v}} &
{z_{w}}\end{array}\right| $$


#### Reference
1. [Jacobians](https://wenku.baidu.com/view/f56aa732b94ae45c3b3567ec102de2bd9605de8b.html)
