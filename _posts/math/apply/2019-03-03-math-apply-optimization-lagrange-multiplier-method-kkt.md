---
layout: post
title: "Optimization: Lagrange Multiplier Method and KKT"
keywords: [] 
description: ""
category: "math"
tags: ["apply"]
---
{% include JB/setup %}

#### Contour Maps
A contour map is a mathod of projecting a three-dimensional object onto a two
dimensional surface, frequently comes up in topography and map making such as
indicating the height of various points of a hill on a two dimensional map.

#### Example
**Please remember the following picture**
<img src="{{IMAGE_PATH}}/apply-optimization-lagrange-kkt.png" />


$$min f(x,y)=x^2 + y^2, s.t. xy=3$
1. $\nabla f = \lambda \times \nabla g$
2. $f_x = \lambda \times g_x$ 
2. $f_y = \lambda \times g_y$ 
2. $xy=3$ 





#### Galois
1. Lagrange find this way to solve this problem. Maybe he was inspired by Euler.
2. Becasue Euler try to solve **Brachistochrone Problem**, He come up an idea,
   when we get the best curve, what will happen.
3. Euler comed up with Euler Equation to solve this prolem.
4. for this problem, the solution is still the same. How to find the value,
   lagrange just think what will happen when we find this point. the gradient
   will equal, yes you are right, the gradient will equal, so we can according
   to this special equation to solve this problem. 

#### Reference
1. [拉格朗日乘数法](https://blog.csdn.net/THmen/article/details/87366904)
