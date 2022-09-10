---
layout: post
title: "R.G.: Parallel Transport and Curvature"
keywords: [""]
description: ""
category: "math"
tags: ["space","R.G."]
---
{% include JB/setup %}

#### Idea
1. How do we compare vectors in curved spaces?
- We can't simply add or substract vectors between two different points in a
   jurved space because the basis vectors between two different points in a
   curved space becasue the basis vectors vary from point to point in the
   space.
- If vector addition and subtraction does not make sense in a curved space,
   then what can we do?
2. We can compare the directions of different vectors between points.
- To do this, we need to parallel transport one vector to the other.


##### 1. In flat space

<img
src="{{IMAGE_PATH}}/math-space-riemann-geometry-parallel-transport-flat-space.png"
height="" width="" />

- the condition $\frac{dv^{\alpha}}{d\lambda} = 0$ means that the vector $v$ is
  transported without any change to its length or direction
- In a curved space we will use this same idea but we will need to take into
  account the variation in the basis vectors as we move from point to point.
- That means we need the covariant derivative of the vector $v$

$$
\frac{D v^{\alpha}}{D \lambda}=\frac{d v^{\alpha}}{d \lambda}+\Gamma_{v
\beta}^{\alpha} v^{v} \frac{d x^{\beta}}{d \lambda}=0
$$

##### 1.2  In curved space

<img
src="{{IMAGE_PATH}}/math-space-riemann-geometry-parallel-transport-curvature.png"
height="" width="" />

- Notice the change in direction that has occurred during the course of its
  journey aroud the loop. This change in direction is entirely due to the
  curvature of the manifold.

#### terminology: Parallelity of Vector Fields
Assumed a manifold with connection $(M,\mathscr{O},\mathscr{A},\nabla)$ 
Def: A vector field X on M is said to be parallelly transported along a smooth 
curve $\gamma : R \rightarrow M$ if the directional deriative of the vector field
is always zero if you go the direction of the tangent of the curve.
$$
\nabla_{v_r}X=0
$$


#### Reference
1. [parallel transport](math-space-riemann-geometry-parallel-transport-flat-space.pn://www.youtube.com/watch?v=p1tfZD2Bm0w)

