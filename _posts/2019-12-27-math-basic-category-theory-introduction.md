---
layout: post
title: "C.T. Introduction"
keywords: []
description: ""
category: "math"
tags: ["basic","C.T."]
---
{% include JB/setup %}


#### Motivation
Many of the problems in mathematics share common features. For example, in
topology one is interested in knowing whether two topological spaces are
hommeomorphic and in group theory one is interested in knowing whether two
groups are isomorphic. This has given rise to the theory of categories and
functors.

- With Algebraic Topology
Much of algebraic topology is the study of functors, for example, the homology,
cohomology, and homotopy functors. For a functor to be truly useful, it should
be simple enough to be computable, ye complex enough to preserve essential
features of the original category.

- With Smooth Manifold
Tangent bundle the differential forms, culminating in de Rham cohomology are
functors of smooth manifolds.


#### Definition
1. A category is a system of related objects.
- The objects do not live in isolation: there is some notion of map between
  objects, binding them together.
- The essence of a category is composition

2. For every object A there is an arrow which is unit of composition. This arrow
   loops from the object to itself. Being a unit of composition means that, when
   composed with any arrow that either starts at A or ends at A, respectively,
   it gives back the same arraw. The unit arrow for object A is called
   $\mathbf{id}_A$. In math notation, if $f$ goes from a to B then
$
f \circ \mathbf{i d}_{A}=f
$

- Why would anyone bother with the identity function, a function that does
  nothing? 
- Why do we bother with the number of zero? Zero is a symbol for nothing.
- Ancient Romans had a number system without a zero and they were able to build
  excellent roads and aqueducts, some of which survive to this day.
- Natural values like zeor or $\mathbf{id}$ are extremely useful when working
  with symbolic variables.
- That's why Romans were not very good at algebra, whereas the Arabs and
  Persians, who were familiar with the concept of zero. So the identity function
  becomes very handy as an argument to or a return from. Higher order functions
  are what make symbolic manipulation of functions possible, they are the
  algebra of functions.



#### Terminology
1. arrows: which are also called morphisms, as functions.
2. commutative diagram: a commutative diagram is a diagram such that all
   directed paths in the diagram with same start and end points lead to the same
   result.
- commutative diagrams play the role in category theory that equations play in
  algebra.


#### Example
1. No Objects: the most trivial category is one with zero objects and zero
   morphisms.
- If you think that an empty set makes sense, then why not an empty category.
2. Simple Graph:
3. Orders: A category where a morphism is a relation between objects: the
   relation of being less than or equal.
- Identity morphism: every object is less than or equal to itself: check.
- Composition if $a \leq b$ and $b \leq c$ then $a \leq c$: check
- A set with a relation like this is called a preorder, so a preorder is indeed
  a category.


#### Monomorphism and Epimorphisms
We are in a new subject, new terminology has to be define.
1. In set theory, mapping between sets can be catgorized into injective and
   surjective.
2. To mimic this concept, monomorphism corresponds to injective, epimorphism to
   surjective.
- We just mimic this concept from set theory, we have to define them based on
  category theoy.
- But in category theory, all we have just morphism, set is abstracted as an
  object.
- How, it's not easy, but we can do it.




#### Reference
1. [commutative diagram](https://en.wikipedia.org/wiki/Commutative_diagram)
