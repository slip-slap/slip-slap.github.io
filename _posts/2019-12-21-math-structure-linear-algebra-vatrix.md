---
layout: post
title: "L.A.: Vatrix Algebra"
keywords: [""]
description: ""
category: "math"
tags: ["structure","L.A."]
---
{% include JB/setup %}

#### Concept
1. Vatrix: A vatrix is matrix whose entries are all vectors(off the same size).
2. Vatrix Algebra: we can take linear combinations of vatrices, if their entries
   are the same size.

Vector =(coefficent vector) $\times$ (basis vatrix)

#### Taylor Coefficient Vectors
The space $P^3$ of polynomials of form $p=a+b\alpha+c\alpha^2+d\alpha^3$
has many bases. we can now organize these(ordered) bases by writing the
associated vatrices.
1. Express $P^3$ as a product of a Taylor coefficient vector and a Taylor basis
   vatrix
$p=1+2\alpha+\alpha^2+-1\alpha^3$

2. Relations between different Taylor coefficient vectors is equivalent to
   finding relations between Taylor basis vatrices.
$$
\left(\begin{array}{c}{1} \\ {\alpha+c} \\ {(\alpha+c)^{2}} \\
{(\alpha+c)^{3}}\end{array}\right)=\left(\begin{array}{c}{1} \\ {c+\alpha} \\
{c^{2}+2 c \alpha+\alpha^{2}} \\ {c^{3}+3 c^{2}+3 c
\alpha^{2}+\alpha^{3}}\end{array}\right)=\left(\begin{array}{cccc}{1} & {0} &
{0} & {0} \\ {c} & {1} & {0} & {0} \\ {c^{2}} & {2 c} & {1} & {0} \\ {c^{3}} &
{3 c^{2}} & {3 c} & {1}\end{array}\right)\left(\begin{array}{c}{1} \\ {\alpha}
\\ {\alpha^{2}} \\ {\alpha^{3}}\end{array}\right)
$$


