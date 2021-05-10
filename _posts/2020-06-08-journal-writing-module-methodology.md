---
layout: post
title: "Work: Methodology"
keywords: []
description: 
category: "work"
tags: []
---
{% include JB/setup %}

#### 1
Expressing y in the form 
$y= x_2 + \theta(x_2 - x_1)$
gives another interpretation: y is the sum of the base point $x_2$
(corresponding to $\theta=0$) and the directiion $x_1 - x_2$ (which points from
x_2 to x_1) scaled by the parameter $\theta$.


#### Refer
1. The reader can refer to any of the standard texts on convex analysis.
2. The notation $x_i$ can refer to the ith component of the vector x, or to the
   ith element of a set or sequence of vectors.
3. We refer to a point of the form $a+b=1$, where a=2, as an affine combination
   of the points a and b.

4. With a slight abuse of notation, we will also refer to
$$ 
\begin{array}{cl}\operatorname{maximize} & f_{0}(x) \\ 
\text { subject to } & f_{i}(x) \leq 0, \quad i=1, \ldots, m \\ 
& a_{i}^{T} x=b_{i}, \quad i=1, \ldots, p
\end{array} 
$$
as a convex optimization problem if the objective function $f_0$ is concave.
