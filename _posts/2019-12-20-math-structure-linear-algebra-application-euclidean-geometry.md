---
layout: post
title: "L.A.: Application In Euclidean Geometry"
keywords: [""]
description: ""
category: "math"
tags: ["structure","L.A."]
---
{% include JB/setup %}

#### Introduction
1. For linear algebra to work as a foundation of geometry, it must be logically
independent point.
2. We don't assum already knowing the results from Euclidean Geometry, in order
   to set algebra, we must forget everything we know about Euclidean
   geometry,even we are motivated by those results.



#### Perpendicular and Length
1. Although, we already familiar with the concept of **perpendicular and length**
2. We need to redefine these two concept in an algebraic way
3. The method is **dot product**, Compared with the definiton of perpendicular
   and length of Euclidean geometry, the definition of dot product is more
   intrinsic and in nature. 
Relativity geometry and phiscis is all about **variant dot product** introduced
by Einstein and Minkowski.

##### Dot Product
$$
\left(\begin{array}{l}{x_{1}} \\ {y_{1}}\end{array}\right)
\cdot\left(\begin{array}{l}{x_{2}} \\ {y_{2}}\end{array}\right)=x_{1}
x_{2}+y_{1} y_{2}=\left(x_{1} y_{1}\right)\left(\begin{array}{l}{x_{2}} \\
{y_{2}}\end{array}\right)
$$ <br />
If $$
A=\left(\begin{array}{ll}{a} & {b} \\ {b} & {c}\end{array}\right)
$$ is symmetric matrix, $$
\vec{v}_{1} \cdot \vec{v}_{2}=\vec{v}_{1}^{\top} A \vec{v}_{2}
$$defines a new product, which also has the bilinear and
symmetric properties. <br />

new product
$$
\begin{aligned} \vec{v}_{1} \cdot \vec{v}_{2} & \equiv
\vec{v}_{1}^{\top}\left(\begin{array}{ll}{a} & {b} \\ {b} &
{c}\end{array}\right) \vec{v}_{2}=\left(\begin{array}{ll}{x_{1}} &
{y_{1}}\end{array}\right)\left(\begin{array}{ll}{a} & {b} \\ {b
c}\end{array}\right)\left(\begin{array}{l}{x_{2}} \\ {y_{2}}\end{array}\right)
\\ &=a x_{1} x_{2}+b x_{1} y_{2}+b x_{2} y_{1}+c y_{1} y_{2} \end{aligned}
$$

##### Perpendicularity
$$
\vec{v}_{1} \perp \vec{v}_{2} \Leftrightarrow
\vec{Q}\left(\vec{v}_{1}\right)+Q\left(\vec{v}_{2}\right)=Q\left(\vec{v}_{1}+\vec{v}_{2}\right)
$$

$$
\begin{array}{l}{Q\left(\vec{v}_{1}\right)+Q\left(\vec{v}_{2}\right)=Q\left(\vec{v}_{1}+\vec{v}_{2}\right)}
\\ {\vec{v}_{1} \cdot \vec{v}_{1}+\vec{v}_{2} \cdot
\vec{v}_{2}=\left(\vec{v}_{1}+\vec{v}_{2}\right)
\cdot\left(\vec{v}_{1}+\vec{v}_{2}\right)} \\ {\vec{v}_{1} \cdot
\vec{v}_{1}+\vec{v}_{2} \cdot \vec{v}_{2}=\vec{v}_{1} \cdot
\vec{v}_{1}+\vec{v}_{1} \cdot \vec{v}_{2}+\vec{v}_{2} \cdot
\vec{v}_{1}+\vec{v}_{2} \cdot \vec{v}_{2}}\end{array}
$$

$$
\begin{array}{l}{0=\vec{v}_{1} \cdot \vec{v}_{2}+\vec{v}_{2} \cdot \vec{v}_{1}}
\\ {0=2 \vec{v}_{1} \cdot \vec{v}_{2}} \\ {0=\vec{v}_{1} \cdot \vec{v}_{2}} \\
{\vec{v}_{1} \perp \vec{v}_{2}}\end{array}
$$ <br />
**Extends perpendicular  to general fields.**

#### Planar Geometry
Linear Functional
If we fix one of the vectors $\vec{v},\vec{w}$, then $\vec{v} \cdot \vec{w}$
defines a linear functional on $V^2$
#### Reference
1. We know many things, inner product, cross product, but but how to use them to
   solve problem.


