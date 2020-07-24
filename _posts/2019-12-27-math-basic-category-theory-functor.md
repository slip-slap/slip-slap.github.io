---
layout: post
title: "C.T. Functor"
keywords: []
description: ""
category: "math"
tags: ["basic","C.T."]
---
{% include JB/setup %}


#### Inspiration
A functor is a very simple but powerful idea. Category theory is just full of
those simple but powerful ideas.



#### Definition


#### Properies
1. If you picture a category as a collection of objects held together by a
   network of morphisms, a functor is not allowed to introduce any tears into
   this fabric. It may smash objects together, it may glue multiple morphisms
   into one, but it may never break things apart.
2. This no-tearing constraint is similar to the continuity condition you might
   know from calculus.
3. Just like functions, functors may do both collapsing and embedding. The
   embedding aspect is more prominent when the source categroy is much smaller
   than the target category.
4. In the extreme, the source can be the trivial singleton category, a category
   with one object and one morphism(the identity).
5. A functor from the singleton category to any other category simply selects an
   object in that category. 
6. The maximally collapsing functor is called the constant functor $\nabla_c$.
   It maps every object in the source category to one selected object in the
   target category, it also maps every morphism in the source category to the
   identity morphism $\mathbf{id}_c$.
- It acts like a black hole, compacting everything into one singularity.

