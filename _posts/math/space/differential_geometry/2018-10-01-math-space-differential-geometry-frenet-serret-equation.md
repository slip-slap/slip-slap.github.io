---
layout: post
title: "D.G.: Frenet Serret Equation"
keywords: [""]
description: ""
category: "math"
tags: ["space","D.G."]
---
{% include JB/setup %}

#### 1. Vector Property
1. $r(t) = \vec{r}(t) = (x(t),y(t),z(t))$
2. $s(t) = \vec{s}(t) = (\hat{x}(t),\hat{y}(t),\hat{z}(t))$
- $r(s)\cdot s(t) = x(t)\hat{x}(t) +  y(t)\hat{y}(t)+  z(t)\hat{z}(t)$
- $r(s)\times s(t) = y(t)\hat{z}(t) -  \hat{y}(t)z(t), x(t)\hat{z}(t) -  \hat{x}(t)z(t), x(t)\hat{y}(t) -  \hat{x}(t)y(t)$

##### 1.1 lemma
$$
f^{\prime}(t)=(r \cdot s)^{\prime}=r^{\prime}(t) \cdot s(t)+r(t) \cdot
s^{\prime}(t)
$$

{u}^{\prime}(t)=(r \times s)^{\prime}=r^{\prime}(t) s(t)+r(t) \times
s^{\prime}(t)
$$Frenet Equation

##### 1.2 corollary

If $Q(r(t))=c$, $r(t) \cdot r(t)=c$ is constant $\forall t$, 
then $r^\prime(t)$ is perpendicular to $r(t)$

-  Proof
$r(t)\cdot r(t) = c$
$r^\prime (t)\cdot r(t) + r(t) \cdot r^\prime (t)= 0$






Ordered set (T(s), N(s), B(s))
The Frenet Equation is all about what happens to the derivative of all the
three vector.


$$
\left(\begin{array}{c}T^{\prime} \\ N^{\prime} \\
B^{\prime}\end{array}\right)=\left(\begin{array}{ccc}0 & k & 0 \\ -k & 0 & T \\
0 & -\tau & 0\end{array}\right)\left(\begin{array}{l}T \\ N \\
B\end{array}\right) 
$$

- $B(s) = T(s) \times N(s)$
- $B^\prime (s) = T^\prime (s) \times N(s) + T(s) \times N^\prime(s)


