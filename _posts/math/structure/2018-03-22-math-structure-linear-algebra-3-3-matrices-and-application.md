---
layout: post
title: "L.A.: Matrices and Application(3 times 3)"
keywords: [""]
description: ""
category: "math"
tags: ["構造","L.A."]
---
{% include JB/setup %}


#### Projection and Reflection
<img src="{{IMAGE_PATH}}/math-structure-linear-algebra-3-3-matrix.png">

##### 1. Projection onto plane
Projection P onto plane $ax+by+cz=0$ via direction $(l,m,n)^T$

<img src="{{IMAGE_PATH}}/math-structure-linear-algorithm-3-3-matrix-and-application-projection.png" height="" width="" />

Properties:
1. $p(\vec{v})=\vec{0}$
2. $p(\vec{u})=\vec{u} \leftrightarrow \vec{u}$ lies on plane $\pi$
3. $p^2(\vec{u})=\vec{u}$ for any $\vec{u}$

##### 2. Projection  onto line
Projection $R$ onto line $\vec{v}:(l,m,n)$ via direction of plane $ax+by+cz=0$

<img src="{{IMAGE_PATH}}/math-structure-linear-algorithm-3-3-matrix-and-application-projection-onto-line.png" height="" width="" />


##### 3. Reflection across plane 


$$
=\left(\begin{array}{l}{x} \\ {y} \\ {z}\end{array}\right)-\frac{2}{a \ell+b m+c
n}\left(\begin{array}{lll}{a l} & {b l} & {c l} \\ {a m} & {b m} & {c m} \\ {a
n} & {b n} & {c n}\end{array}\right)\left(\begin{array}{l}{x} \\ {y} \\
{z}\end{array}\right)
$$

$$
S: \frac{1}{a \ell+b m+c n}\left(\begin{array}{ccc}{-a l+b m+c n} & {-2 b \ell}
& {-2 c l} \\ {-2 a m} & {a l-b m+c n} & {-2 c m} \\ {-2 a n} & {-2 b n} & {a
l+b m-c n}\end{array}\right)
$$

#### Reflection over a Line
$$
=\frac{2}{a l+b m+c n}\left(\begin{array}{lll}{a l} & {b l} & {c l} \\ {a m} &
{b m} & {c m} \\ {a n} & {b n} & {c
n}\end{array}\right)\left(\begin{array}{l}{x} \\ {y} \\
{z}\end{array}\right)-\left(\begin{array}{l}{x} \\ {y} \\ {z}\end{array}\right)
$$

$$
T: \frac{1}{a l+b m+c n}\left(\begin{array}{ccc}{a l-b m-c n} & {2 b l} & {2 c
l} \\ {2 a m} & {-a b+b m-c n} & {2 c m} \\ {2 a n} & {2 b n} & {-a l-b m+c
h}\end{array}\right)
$$

#### Normal Vector
$$
\begin{array}{l}{P: \frac{1}{Q}\left(\begin{array}{ccc}{b^{2}+c^{2}-a b} & {-a
c} \\ {-a b} & {a^{2}+c^{2}-b c} \\ {-a c} & {-b c} &
{a^{2}+b^{2}}\end{array}\right)} \\ {R:
\frac{1}{Q}\left(\begin{array}{ccc}{a^{2}} & {a b} & {a c} \\ {a b} & {b^{2}} &
{b c} \\ {a c} & {b c} & {c^{2}}\end{array}\right)}\end{array}
$$

$$
S: \frac{1}{Q}\left(\begin{array}{ccc}{-a^{2}+b^{2}+c^{2}} & {-2 a b} & {-2 a c}
\\ {-2 a b} & {a^{2}-b^{2}+c^{2}} & {-2 b c} \\ {-2 a c} & {-2 b c} &
{a^{2}+b^{2}-c^{2}}\end{array}\right)
$$





