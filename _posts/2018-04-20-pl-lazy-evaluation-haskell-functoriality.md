--- 
layout: post 
title: "Haskell: Functoriality" 
keywords: [] 
description: 
category: "PL"
tags: ["haskell"] 
--- 
{% include JB/setup %}

#### Definition
On objects, a bifunctor maps every pair of objects, one from category $\mathbf{C}$,
and one from category $\mathbf{D}$, to an object in category $\mathbf{E}$.
- This is just saying that it's a mapping from a Cartesian product of categories
  $\mathbf{C} \times \mathbf{D}$ to $\mathbf{E}$

- Functoriality means that a bifunctor has to map morphisms as well. This time,
  it must map a pair of morphisms, one from $\mathbf{C}$ and one from $\mathbf{D}$, to a morphism in $\mathbf{E}$



#### Product and Coproduct

