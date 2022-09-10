---
layout: post
title: "C.A.: Euler's Identity"
keywords: []
description: ""
category: "math"
tags: ["change","C.A."]
---
{% include JB/setup %}


**Question:** why $e^i\theta = cos\theta + isin\theta$?


#### Proof in the algebraic way
$$
\begin{aligned} \sin x &=\sum_{n=0}^{\infty} \frac{(-1)^{n}}{(2 n+1) !} x^{2
n+1}=x-\frac{x^{3}}{3 !}+\frac{x^{5}}{5 !}-\cdots \\ \cos x
&=\sum_{n=0}^{\infty} \frac{(-1)^{n}}{(2 n) !} x^{2 n}=1-\frac{x^{2}}{2
!}+\frac{x^{4}}{4 !}-\cdots \\ e^{z} &=\sum_{n=0}^{\infty} \frac{z^{n}}{n
!}=1+z+\frac{z^{2}}{2 !}+\frac{z^{3}}{3 !}+\cdots \end{aligned}
$$


$$
\begin{aligned} e^{i x} &=\sum_{n=0}^{\infty} \frac{(i x)^{n}}{n !}=1+i
x+\frac{(i x)^{2}}{2 !}+\frac{(i x)^{3}}{3 !}+\cdots \\ &=1+i x-\frac{x^{2}}{2
!}-i \frac{x^{3}}{3 !}+\frac{x^{4}}{4 !}+i \frac{x^{5}}{5 !}-\cdots \\
&=1-\frac{x^{2}}{2 !}+\frac{x^{4}}{4 !}+\cdots+i\left(x-\frac{x^{3}}{3
!}+\frac{x^{5}}{5 !}-\cdots\right) \\ &=\cos x+i \sin x \end{aligned}
$$





#### Galois
A exponential function makes sense for human if and only if the power is
integer, maybe rational. But what if the power is an imagenary number, or a
matrix? Does it still make sense?
- We find something we can not understand, is it still useful?
- "In mathematics, you don't need understand them, you use them", one
  mathematican said, I can't remember who he is.
- You can discovery the truth via different methods.


#### Reference
1. [Euler's formula](https://en.wikipedia.org/wiki/Euler%27s_formula)
2. [Euler's identity](https://en.wikipedia.org/wiki/Euler's_identity)
3. [Euler's formula proof without euler's equation](https://www.reddit.com/r/math/comments/3536wr/what_is_the_proof_of_ix_lncosxisinx_without/)
