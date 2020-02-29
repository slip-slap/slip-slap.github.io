---
layout: post
title: "Calculus of Variations"
keywords: [ "functional analysis"]
description: ""
category: "math"
tags: ["change"]
---
{% include JB/setup %}

$$
\begin{aligned}\left.\int_{x_{1}}^{x_{2}} \frac{d L}{d
\varepsilon}\right|_{\varepsilon=0} d x
&=\int_{x_{1}}^{x_{2}}\left(\frac{\partial L}{\partial f} \eta+\frac{\partial
L}{\partial f^{\prime}} \eta^{\prime}\right) d x \\ &=\int_{x_{1}}^{x_{2}}
\frac{\partial L}{\partial f} \eta d x+\left.\frac{\partial L}{\partial
f^{\prime}} \eta\right|_{x_{1}} ^{x_{2}}-\int_{x_{1}}^{x_{2}} \eta \frac{d}{d x}
\frac{\partial L}{\partial f^{\prime}} d x \\
&=\int_{x_{1}}^{x_{2}}\left(\frac{\partial L}{\partial f} \eta-\eta \frac{d}{d
x} \frac{\partial L}{\partial f^{\prime}}\right) d x \end{aligned}
$$


#### Galois
1. This method just simply this problem to what will happen when we find the
   target funtion. we will get a extremal function.
2. I think Lagrange use the same idea to solve KKT problem.


#### Reference
1. [Calculus of Variations](https://en.wikipedia.org/wiki/Calculus_of_variations)
