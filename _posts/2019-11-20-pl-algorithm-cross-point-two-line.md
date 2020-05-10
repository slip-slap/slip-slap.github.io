---
layout: post
title: "Algorithm: Intersection of Two Line"
keywords: []
description: 
category: "PL"
tags: ["algorithm"]
---
{% include JB/setup %}

#### Crap
This is a very common question, but it is not simple.


#### Solution
1. we use vector coordinate to solve this problem.
2. Given the two line, suppose they have intersect point
3. We can obtain the intersection point.
4. The last step is to determine weather this point is on the line
5. we can again use affine geometry with vector to deal with this
$
\vec{OC}=\vec{OA} + \lambda \vec{AB}
$
Based on the value of $\lambda$, we can determine whether this point is on the
line.

#### Galois
The naive method to determine whether a point is a plane it compare the
coordinate value. That's a method, but but but, it's so naive. <br />
But with math tool, you see it, math is beautiful, math is great, I love math.


