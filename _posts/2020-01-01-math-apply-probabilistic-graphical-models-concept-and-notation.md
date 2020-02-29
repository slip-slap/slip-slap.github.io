---
layout: post
title: "P.G.M.: Concept and Notation"
keywords: [""] 
description: ""
category: "math"
tags: ["apply"]
---
{% include JB/setup %}
#### Motivation
Probabilistic graphical models use a graph-based representation as the basis for
compactly encoding a complex distribution over a high-dimensional space. In this
graphical representation:
- nodes: stands for variables in our domain.
- edges correspond to direct probabilistic interactions between them.


#### Notation
1. Marginally Independent: let $X,Y,Z$ be sets of random variables, we say that
   X is conditionaly independent of Y given Z in a distribution P if P
   satisfies($X=x \perp Y=y$|Z=z) for all values $x \in Val(X)$,$y \in
   Val(Y)$,and $z \in Val(Z)$. The variables in the set Z are often said to be
   observed. If the set Z is empty, then instead of writing 
   $$
   (\boldsymbol{X} \perp \boldsymbol{Y} | \emptyset)
   $$, we write $X\perp Y$ and say that X and Y are marginally independent.
#### Notation
1. $Val(X)$: denote the set of values that a random variable X can take. 
- Val(X)=$$\{false,true\}$$

#### Galois
1. Why we are so familiar with square, circle, triangle, because these very
   simple patters formed the very complicated world, the core concept behind
   this is the group theory.
2. For this new subject, probabilitic graphical model, the logic is the same, if
   you want to master this subject, you have to know the most simple pattern in
   this subject, Such as I-Map, I-projection and M-projection.

#### Reference



