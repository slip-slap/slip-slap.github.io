---
layout: post
title: "D.G: Gauss-Egregium"
keywords: [""]
description: ""
category: "math"
tags: ["space","D.G."]
---
{% include JB/setup %}

#### HAHA
Gauss introduce the idea of describing a surface **S** parametrically, and then
we can think about the surface in coordinates, then we can transform everything
form the surface to the coordiates. Actually, Euler is the first guy who found
this, but he didn't do that much. Gauss took this idea. 


$$
v=x r_{u}+y r_{v}
$$ <br />

$$
v\cdot v=(x r_{u}+y r_{v}i)\ast(x r_{u}+y r_{v}i)
E x^{2}+2 F x y+G y^{2}
$$
where  <br />

$$
\begin{array}{l}{E \equiv r_{u} \cdot r_{u}} \\ {F=r_{u} \cdot r_{v}=r_{v} \cdot
r_{u}} \\ {G=r_{v} \cdot r_{v}}\end{array}
$$



We can think these are numbers associate with point p in the surface, Euler
think these are numbers associate with r.
1. The number E, F, G depends on the point $p\in S$ 
2. They can be thinked as function in the u,v plane
3. another obvious is the normal to the tangent plane, $N(p)$ is unit normal at
   p point outwards.



#### Gauss-Rodrigues Map
once you a map, you will ask what does it derivative look like? 

$$
N(p)=\frac{r_{u} \times r_{r}}{\left|r_{u} \times r_{v}\right|}
$$

Just as the rate of change of a unit normal vector to a curve in the plane
reports the curvature of that curve, the differential $dN_p$ of the Gauss map of
a surface S reports information about the curvature of that surface.
1. There are so many curvature in the differential geometry
2. Euler has his version, two principal curvatre
3. Gauss has his version, the product of two principal curvature
4. In Riemann Geometry, you can define your own curvature.




#### Golais
1. Why we admit that a curve in three dimensional space is intrinsic geometry,
because the curvature.
2. And now, according to Gauss-Rodrigues map, the curvature of a map also can be
determined just only according to the surface, so now we can think surface is
also intrinsic geometry, that's reasonable.





#### reference
1. [Gauss Map](https://www.math.upenn.edu/~shiydong/Math501X-3-GaussMap.pdf)
2. [cross product](https://en.wikipedia.org/wiki/Cross_product)
