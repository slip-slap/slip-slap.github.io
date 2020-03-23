---
layout: post
title: "L.A.: Linear Equation"
keywords: [""]
description: ""
category: "math"
tags: ["構造","L.A."]
---
{% include JB/setup %}
#### Two different way of linear equation
#### First
$$
x_{1}\left(\begin{array}{l}{3} \\ {1} \\
{2}\end{array}\right)+x_{2}\left(\begin{array}{l}{1} \\ {3} \\
{5}\end{array}\right)+x_{3}\left(\begin{array}{l}{0} \\ {2} \\
{4}\end{array}\right)=\left(\begin{array}{c}{-5} \\ {7} \\
{10}\end{array}\right)
$$ <br />
Vector 
$$
\vec{v}=\left(\begin{array}{r}{-5} \\ {7} \\ {10}\end{array}\right)
$$ as a linaer combination of $v_1,v_2,v_3$

##### Geometry
$$
x_{1}\left(\begin{array}{c}{1} \\
{-1}\end{array}\right)+x_{2}\left(\begin{array}{l}{2} \\
{1}\end{array}\right)+x_{3}\left(\begin{array}{c}{-1} \\
{4}\end{array}\right)=\left(\begin{array}{c}{5} \\ {3}\end{array}\right)
$$
$$
\begin{array}{c}{x_{1}+2 x_{2}-x_{3}=5} \\ {-x_{1}+x_{2}+4 x_{3}=3}\end{array}
$$
<br />
<br />
<img
src="{{IMAGE_PATH}}/math-structure-linear-algebra-linear-equation-affine.png">
#### Second
$$
\begin{aligned} 3 x_{1}+x_{2} &=-5 \\ x_{1}+3 x_{2}+2 x_{3} &=7 \\ 2 x_{1}+5
x_{2}+4 x_{3} &=10 \end{aligned}
$$



#### Geometry Interpretation
The difference of geometry meaning between square matrix and $m\times
   n$-matrix
1. square matrix means mapping: in same space
2. $m\times n$-matrix means mappling: in two different spaces, as shown in the
   following picture from
   2-dimensional affine space to 3-dimensional affine space. 
<br />
<br />
<img src="{{IMAGE_PATH}}/math-structure-linear-algebra-linear-equation.png">
<br />
<br />


In the above picture, There is a red plane in the three dimensional plane, what
does that plane mean ?
1. It means after the matrix works on the vector from the 2-dimensional space,
   the red plane is the image.
2. You just a 2-dimensional vector, even if you are mapped to three dimensional
   space, you just a subspace of the three dimensional space.

$$
\left(\begin{array}{rr|r}{1} & {2} & {y_{1}} \\ {1} & {-1} & {y_{2}} \\
{\frac{1}{3}} & {4} & {y_{3}}\end{array}\right)
\rightarrow\left(\begin{array}{rr|r}{1} & {2} & {y_{1}} \\ {0} & {-3} &
{y_{2}-y_{1}} \\ {0} & {-2} & {y_{3}-3 y_{1}}\end{array}\right)
$$
$$
\left(\begin{array}{ll|l}{1} & {0} & {\frac{1}{3} y_{1}+\frac{2}{3} y_{2}} \\
{0} & {1} & {\frac{1}{3} y_{1}-\frac{1}{3} y_{2}} \\ {0} & {0} & {7 y_{1}+2
y_{2}-3 y_{3}}\end{array}\right)
$$

$$
\begin{array}{l}{x_{1}=\frac{1}{3} y_{1}+\frac{2}{3} y_{2}} \\
{x_{2}=\frac{1}{3} y_{1}-\frac{1}{3} y_{2}}\end{array}
$$ <br />

the red plane is in the following formula <br />
$$
7y_1+2y_2-3y_3=0
$$
#### Three Dimensional Space to Two Dimensional Space
\begin{array}{l}{x_{1}-x_{2}+3 x_{3}=y_{1}} \\ {2
x_{1}+x_{2}-x_{3}=y_{2}}\end{array}
<br />

<img src="{{IMAGE_PATH}}/math-structure-linear-algebra-linear-equation-3-2.png">
<br />
1. The interesting thing in this transformation is the vector marked by green
   line in three dimensional space is compressed to the point (0,0) in two 
   dimensional affine space.

$$
if\left(\begin{array}{l}{y_{1}} \\
{y_{2}}\end{array}\right)=\left(\begin{array}{l}{0} \\ {0}\end{array}\right)
$$

$$
\left(\begin{array}{l}{x_{1}} \\ {x_{2}} \\
{x_{3}}\end{array}\right)=\lambda^{\prime}\left(\begin{array}{c}{-2} \\ {7} \\
{3}\end{array}\right)
$$
#### Galois
1. There are many types of matrix, column vector, row vector,
   square matrix, $m\times n$-matrix. In this part, we talk about the properties
   of $m\times n$-matrix, and the application to solve equations.
2. Later on, we study square matrix, semipositive square matrix and their
   application. 
3. Matrix is big topic, we pull small part from this big topic, and talk about
   their application.
