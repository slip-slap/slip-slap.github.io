---
layout: post
title: "R.A.: Gamma Function"
keywords: []
description: ""
category: "math"
tags: ["change","R.A."]
---
{% include JB/setup %}

#### 1 Gamma Function
$$
\Gamma(z)=\int_{0}^{\infty} x^{z-1} e^{-x} d x, \quad \mathfrak{R}(z)>0
$$


##### 1.1 Prove 
$$
\begin{aligned} 
\Gamma(z+1) &=\int_{0}^{a} x^{2} e^{-x} d x    \\ 
&=\left[-x^{2} e^{-x}\right]_{0}^{\infty} +\int_{0}^{\infty} z x^{z-1}
e^{-x} d x \\
&=z\Gamma(z)
\end{aligned}
$$

##### 1.2 Property
$$\Gamma(\frac{1}{2})=\sqrt{\pi}$$



