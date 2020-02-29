---
layout: post
title: "Abstract Algebra: Vector Space"
keywords: [ " linear algebra"]
description: ""
category: "math"
tags: ["structure"]
---
{% include JB/setup %}

#### Why vector space ?
We are pretty familiar with 2-dimensional and 3-dimensional vector space, and
how about 4-dimensional vector space, such as spacetime.  we want to generalize
this, so vector space comes.

#### Terminology
1. Linear Algebra: the study of vector space is also called linear algebra.
2. Scalar: $$\overrightarrow{v}=(v_{1},v_{2},\cdots,v_{n})$$ and
   $$\overrightarrow{v}=(c \cdot v_{1},c \cdot v_{2},\cdots,c \cdot v_{n})$$,
   and c is called a scalar


#### Vector Space Properties
1. Addition $$ \overrightarrow{v} $$, $$\overrightarrow{w}$$ are vectors, $$ \overrightarrow{v} +  \overrightarrow{w}$$ also a vector.
2. Commutativity: $$ \overrightarrow{v} +  \overrightarrow{w} = \overrightarrow{w} +  \overrightarrow{v}$$
3. Identity element: $$ 0+  \overrightarrow{v} = \overrightarrow{v} +  0$$
4. Inverses: $$ \overrightarrow{v} +  \overrightarrow{-v} = \overrightarrow{-v} +  \overrightarrow{v} = 0$$
5. Associativity: ($$ \overrightarrow{v} +  \overrightarrow{w}) + \overrightarrow{z}= \overrightarrow{v} +  (\overrightarrow{w}+\overrightarrow{z})$$

#### Scalars Properties
1. distributive properties: $$c \cdot (\overrightarrow{v}+\overrightarrow{w}) = c \cdot \overrightarrow{v} + c \cdot{\overrightarrow{w}}$$
2. associative properties: 


So vector space are commutative groups


#### Examples
1. The following matrix under + operator: <br />
$$ 
	\begin{bmatrix}
		a_{11} & a_{12} & a_{16} \\
		a_{12} & a_{22} & a_{26} \\
		a_{16} & a_{26} & a_{66} 
	\end{bmatrix}
$$
2. V ={Real polynomials of degree 5 or less} <br />
      $$ V =a_{5} x^{5}+a_{4} x^{4}+a_{3} x^{3}+a_{2} x^{2}+a_{1} x+a_{0}$$
   
3. $$V ={f(x)| \text { f is continuous on R}} $$
#### Relationship Between Linear Algebra and Others Math Branches
1. Linear algebra is central to almost all aeras of mathmatics. 
2. Linear algebra is fundamental in modern presentations of geometry, including
   for defining basic objects such as lines, planes and rotations.
3. Functional Analysis may be basicaly viewed as the application of linear
   algebra to space of functions.
4. most textbooks, introduce geometric space from linear algebra, and geometry
   is often presented at elementary level, as a subfield of linear algebra

#### Basis of Vector Space(Linear Space)
An (ordered) basis of a linear space $W$, is an ordered list 
$B=[\vec{w_1},\vec{w_2},\cdots,\vec{w_n}]$ of elements of W with the properties:
1. Spanning set: every $w \in W$ can be written:
$$
w=a_{1} \vec{w}_{1}+a_{2} \vec{w}_{2}+\dots+a_{n} \vec{w}_{n}
$$
2. Linear independent
$$
a_{1} \vec{w}_{1}+a_{2} \vec{w}_{2}+\dots+a_{n} \vec{w}_{n}=\vec{0}
$$ $\rightarrow a_1=a_2=\cdots=a_n=0$

##### Examples 1
$W=V^n$ where <br />
$$
B=\left[e_{1}, e_{2}, \cdots, e_{n}\right]
$$ <br />
$$
e_{i}=\left(\begin{array}{l}{0} \\ {0} \\ {\vdots} \\ {1} \\
{0}\end{array}\right)
$$

##### Examples 2
$W=P^3$ where <br />
$$
B=\left[1, \alpha, \alpha^{2}, \alpha^{3}\right]
$$


#### Galois
1. What is a Vector Space?
First, we need to answer this question. 
To form a vector space, we only need to operation, addition and scalar
multiplication, only this, It's enough, no inner product, no corss product, only
vector addition and scalar multiplication.**It doesn't need to define
multiplication between two vectors, It doesn't define inner product, That's the
other structure.**<br />
2. Why we define like this, to generalize, in this way, the polynomial is also a
   vector space,too .

We must be very clear about this basic concept.
3. How to denote the basic vector, as a computer scientist,we would perfer to $\vec{e_0} \vec_{e_1}, 
\vec{e_2} \vec_{e_3}$, not start with **1**.



#### reference


