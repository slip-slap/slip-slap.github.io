---
layout: post
title: "L.A.: Determinant"
keywords: [""]
description: ""
category: "math"
tags: ["structure","L.A."]
---
{% include JB/setup %}

#### Question: What is $\Delta (A)$ ? 
if $\vec{v_1}$,$\vec{v_2}$,$\vec{v_3}$ are columns of A then,
$$
\vec{v}_{1} \vee \vec{v}_{2} \vee \vec{v}_{3}=\Delta\left(e_{1} v e_{2} v
e_{3}\right)
$$

$$
A=\left(\begin{array}{lll}{a} & {b} & {c} \\ {d} & {e} & {f} \\ {g} & {h} &
{i}\end{array}\right)
$$

$$
\begin{array}{l}{\left(a e_{1}+d e_{2}+g e_{3}\right) v\left(b e_{1}+e_{2}+h
e_{3}\right) v\left(c e_{1}+f e_{2}+i e_{3}\right)} \\ {=(a e i-a h f+b f g-b d
i+c d h-c e g)\left(e_{1} v e_{2} v e_{3}\right)}\end{array}
$$

#### How to Understand
##### Geometrically
1. You could think of a determinant as a volume. Think of the columns of the matrix
as vectors at the origin forming the edges of a skewed box. The determinant
gives the volume of that box. For example, in 2 dimensions, the columns of the
matrix are the edges of a rhombus.
2. You can derive the algebraic properties from this geometrical interpretation.
   For example, if two of the columns are linearly dependent, your box is
   missing a dimension and so it's been flattened to have zero volume.
3. When you thinking the determinant in a geometric way. You can treat each
   column or each row as one edge of the imaging box. The result is the same no
   matter you treat each column as an edge or each row as an edge.
<br />

  
##### Algebraically

1. The determinant is a function from the set of square matrices into the real
   numbers that preserves the operation of multiplication: <br />
  $det(AB)=det(A)det(B)$ <br />
  and so it carries some information about square matrices into the much more
  familiar set of real numbers
2. The determinant function maps the identity matrix *I* to the identity element
   of the real numbers, det(I)=1, which real number does not have a
   multiplicative inverse? those which are **mapped to 0 by the determinant**
   function. <br />
   This operation preserving property of the determinant explains some of the
   value of the determinant function and provides a certain level of intuition
   for me in working with matrices.



