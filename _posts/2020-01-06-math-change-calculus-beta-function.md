---
layout: post
title: "Calculus: Beta Function"
keywords: ["analysis"]
description: ""
category: "math"
tags: ["change"]
---
{% include JB/setup %}

#### Definition
$$
\mathrm{B}(x, y)=\int_{0}^{1} t^{x-1}(1-t)^{y-1} d t
$$ <br />
- the beta function, also called the Euler integral of the first kind.

#### Properties
1. Symmetry: B(x,y)=B(y,x)
2. Relationship between gamma function and beta function: $$
\mathrm{B}(x, y)=\frac{\Gamma(x) \Gamma(y)}{\Gamma(x+y)}
$$
3. when x and y are positive integers: $$
\mathrm{B}(x, y)=\frac{(x-1) !(y-1) !}{(x+y-1) !}
$$
