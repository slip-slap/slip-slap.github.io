---
layout: post
title: "R.A.: Gauss Integral"
keywords: []
description: ""
category: "math"
tags: ["change","R.A."]
---
{% include JB/setup %}


#### The thing
This complete blew my mind when I first saw it. Where's the circle?



$$
\int_{-\infty}^{\infty} e^{-x^{2}} d x=\sqrt{\pi}
$$

#### Prove
$$I=\int_{-\infty}^{\infty} e^{-x^{2}} d x $$
$$
\begin{array}{l}
f(x, y) &=  \int_{-\infty}^{\infty} e^{-\left(x^{2}+y^{2}\right)} \\ 
		&=  \int_{-\infty}^{\infty} \int_{-\infty}^{\infty}
		e^{-\left(x^{2}+y^{2}\right)} d y d x \\
		&=\int_{-\infty}^{\infty} e^{-x^{2}} \int_{-\infty}^{\infty} e^{-y^{2}} d
		y d x
\end{array}
$$


#### Property

$$
\int_{-\infty}^{\infty} e^{-a(x+b)^{2}} d x=\sqrt{\frac{\pi}{a}}
$$


#### Inference
1. [Gaussian Integral](https://en.wikipedia.org/wiki/Gaussian_integral)
2. [Youtube video](https://www.youtube.com/watch?v=9CgOthUUdw4)

