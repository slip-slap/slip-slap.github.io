---
layout: post
title: "A.A.: Structure"
keywords: []
description: ""
category: "math"
tags: ["構造","A.A."]
---
{% include JB/setup %}

#### Motivation
The ultimate goal of group theory is to classify all groups up to isomorphism;
that is, given a particular group, we should be able to match it up with a known
group via an isomorphism.
- For example, we have already proved that any finite cyclic group of order n is
  isomorphic to $\mathbf{Z}_n$
- Hence, we "know" all finite cyclic groups. It is probably not reasonable to
  expect that we will ever know all groups;
- However, we can often classify certain types of groups or distinguish between
  groups in special cases.


#### Morphism
1. Homomorphism
- In algebra, a structure-preserving map between two algebraic structures of the same type, such as groups, rings, or vector spaces
- A field homomorphism is a map from one field to another one which is additive, multiplicative, zero-preserving, and unti-preserving.

2. Isomorphism
- A bijection f such that both f and its inverse $f^-1$ are homomorphisms, that is, structure-preserving mappings.

3. Endomorphism
A homomorphism that maps a system to itself

#### relation

#### Equality relation
Let R be the relation on Z defined as follows: for all $a,b \in Z$, $a R b$ if
and only if $a=b$, this equality relation on Z has the following properties.
1. For each $a \in Z$, a=b and so $a R a$
2. For all $a, b \in Z$, if $a=b$, then $b=a$. That is, if $a R b$, then $b R a$
3. For all $a, b, c \in Z$, if $a=b$ and $b=c$, then $a=c$, that is, if $a R b$ and $b R c$, then $a R c$

#### Equivalence relations
Let A be nonempty set and let R be a relation on A.
1. The relation R is reflexive on A provided that for each $x \in A$, $x R x$ or, equivalently, $(x,x) \in R$
- This means that if a reflexive relation is represented on a digraph, there would have to be a loop at each vertex

<img src="{{IMAGE_PATH}}/math-structure-abstract-algebra-group-structure-reflexive.png" height="" width="" />

2. The relation R is symmetric provided that for every $x, y \in A$, if $x R
   y$, then $y R x$, for every $x, y \in A$, then $(y,x) \in R$
- This means that if a symmetric relation is represented on a digraph, then
  anytime there is a directed edge from one vertex to a second vertex, there
  would be a directed edge from the second vertex to the first vertex.

<img src="{{IMAGE_PATH}}/math-structure-abstract-algebra-group-structure-symmetry.png" height="" width="" />

3. The relation R is transitive provided that for every $x,y, z \in A$, if $x R
   y$ and $y R z$, then $x R z$, or equivalently, for every $x,y,z \in A$, if
   $(x,y) \in R$ and $(y,z) \in R$, then $(x,z) \in R$
- If a transitive relation is represented by a digraph, then anytime there is a
  directed edge from a vertex x to a vertex y, and a directed edge from y to a
  vertex y to a vertex z, there would be a directed edge from x to z.

<img src="{{IMAGE_PATH}}/math-structure-abstract-algebra-group-structure-transitive.png" height="" width="" />






#### Reference
1. [equivalence relation](https://math.libretexts.org/Bookshelves/Mathematical_Logic_and_Proof/Book%3A_Mathematical_Reasoning__Writing_and_Proof_(Sundstrom)/7%3A_Equivalence_Relations/7.2%3A_Equivalence_Relations)






