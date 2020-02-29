---
layout: post
title: "Affine Geometry: Vector Algebra"
keywords: ["history"]
description: ""
category: "math"
tags: ["space"]
---
{% include JB/setup %}

#### HAHA
$$
\begin{aligned} \vec{c} &=\vec{a}+\lambda(\vec{b}-\vec{a}) \\ &=\vec{a}-\lambda
\vec{a}+\lambda \vec{b} \\ &=(1-\lambda) \vec{a}+\lambda \vec{b}\end{aligned}
$$

Affine combination of $\vec{a}$ and $\vec{b}$ <br />
Affine means: the sum of coefficient equals to 1 <br />

$$
\begin{array}{l}{\lambda=0 \Leftrightarrow \vec{c}=\vec{a}} \\ {\lambda=1
\Leftrightarrow \vec{c}=\vec{b}} \\ {0 \leqslant \lambda \leqslant 1
\Leftrightarrow C}\end{array}
$$


####  HAHA
A bivector can simplify the area algebraicly, allow us think area pure
algebraicly, we want to apply algebra to geometry.


#### Properties
$$
\begin{array}{l}(\lambda \vec{a}) \vee \vec{b}=\vec{a} \vee(\lambda
\vec{b}) \equiv \lambda(\vec{a} \vee b)} \\ {(\vec{a}+\lambda \vec{b}) \vee
\vec{b}=\vec{a} \vee \vec{b}} \\ {\vec{a} \vee(\lambda \vec{a}+\vec{b})=\vec{a}
\vee \vec{b}}\end{array}
$$


#### Claim
In the plane, every bivector is a multiple of $e_1 v e_2$ <br />
$$
\begin{aligned} \vec{a} v \vec{b}=\left(a e_{1}+b e_{2}\right) v\left(c e_{1}+d
e_{2}\right) &=a c\left(e_{1} v e_{1}\right)+a d\left(e_{1} v e_{2}\right) \\
&+b c\left(e_{2} v e_{1}\right)+b d\left(e_{2} v e_{2}\right) \\ &=(a d-b
c)\left(e_{1} v e_{2}\right) \end{aligned}
$$

#### Area
**Area is a relative concept!!!!**
#### AA
1. In affine geometry, there is no absolute area, it is just relative, it depends
on your measure system.
2. Ratios of areas are affine geometry invariants.

#### Volume
$$
\vec{a} v \vec{b} v \vec{c}=\left(a e_{1}+b e_{2}+c e_{3}\right) v\left(d
e_{1}+e e_{2}+f_{e}\right) v\left(g e_{1}+h e_{2}+i e_{3}\right)
$$

<br />
$$
\begin{aligned}=& a e i\left(e_{1} v e_{2} v e_{3}\right)+a f h\left(e_{1} v
e_{3} v e_{2}\right)+\\ & b d i\left(e_{2} v e_{1} v e_{3}\right)+b f
g\left(e_{2} v e_{3} v e_{1}\right)+\\ & c d h\left(e_{3} v e_{1} v
e_{2}\right)+c e g\left(e_{3} v e_{2} v e_{1}\right) \end{aligned}
$$

<br />
$$
=(a e i-a f h+b f g-b d i+c d h-c e g) e_{1} v e_{2} v e_{3}
$$

<br />

$$
\begin{array}{l}{\triangle(\vec{a}, \vec{b}, \vec{c})=a e i-a f h+b f g-b d i+c
d h-c e g} \\ {\left(e, e_{2}, e_{3}\right)}\end{array}
$$

#### Vector interpreation of linear system
$$
\begin{array}{l}{x+2 y=6} \\ {x-y=1}\end{array}
$$

$$
\left(\begin{array}{l}{1} \\ {1}\end{array}\right) x+\left(\begin{array}{c}{2}
\\ {-1}\end{array}\right) y=\left(\begin{array}{l}{6} \\ {1}\end{array}\right)
$$

$$
x \vec{a}+y \vec{b}=\vec{c}
$$

####  Example 2:
$$
\begin{array}{l}{2 x+y=4} \\ {4 x+2 y=3}\end{array}
$$
<br />
$$
\left(\begin{array}{l}{2} \\ {4}\end{array}\right) x+\left(\begin{array}{l}{1}
\\ {2}\end{array}\right) y=\left(\begin{array}{l}{4} \\ {3}\end{array}\right)
$$
<br />
$$
x \vec{a}+y \vec{b}=\vec{c}
$$

#### Generalization
$$
\begin{array}{l}{y_{1}=a x_{1}+b x_{2}} \\ {y_{2}=c x_{1}+d x_{2}}\end{array}
\Leftrightarrow\left(\begin{array}{l}{y_{1}} \\
{y_{2}}\end{array}\right)=\left(\begin{array}{ll}{a} & {b} \\ {c} &
{d}\end{array}\right)\left(\begin{array}{l}{x_{1}} \\ {x_{2}}\end{array}\right)
$$
<br />
$$
\begin{array}{l}{z_{1}=e y_{1}+f y_{2}} \\ {z_{2}=g y_{1}+h y_{2}}\end{array}
\Leftrightarrow\left(\begin{array}{l}{z_{1}} \\
{z_{2}}\end{array}\right)=\left(\begin{array}{ll}{e} & {f} \\ {g} &
{h}\end{array}\right)\left(\begin{array}{l}{y_{1}} \\ {y_{2}}\end{array}\right)
$$
<br />
$$
\left(\begin{array}{l}{z_{1}} \\
{z_{2}}\end{array}\right)=\left(\begin{array}{ll}{e} & {f} \\ {g} &
{h}\end{array}\right)\left(\begin{array}{ll}{a} & {b} \\ {c} &
{d}\end{array}\right)\left(\begin{array}{l}{x_{1}} \\ {x_{2}}\end{array}\right)
$$

<br />
$$
=\left(\begin{array}{ll}{e a+f c} & {e b+f d} \\ {g a+h c} & {g b+h
d}\end{array}\right)\left(\begin{array}{l}{x_{1}} \\ {x_{2}}\end{array}\right)
$$



#### Reference
1. [Cartesian Product](https://en.wikipedia.org/wiki/Cartesian_product)


