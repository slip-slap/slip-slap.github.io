---
layout: post
title: "C.T.: Set Category"
keywords: []
description: ""
category: "math"
tags: ["basic","C.T."]
---
{% include JB/setup %}

#### Background
1. Mathematicians have a love/hate relationship with set theory. It's the
   assembly language of mathematics - at least it used to be.
- Category theory tries to step away from set theory, to some extent.
- For instance, the set of all sets doesn't exist, but the category of all sets,
  $\textbf{Set}$, does.
- On the other hand, we assume that morphisms between any two objects in a
  category form a set. We even called it a hom-set.

2. There is a branch of category theory where morphisms don't form sets. Instead
   they are objects in another category. Those categories that use hom-objects
   rather than hom-sets, are called enriched categories.

#### Intuition
In particular examples, we might have some extra structure in mind; for
instance, we often equip the set of real numbers with an order, a field
structure and a metric. But to view real numbers as amere set is to igore all
that structure, to regard it as no more than a bunch of featureless points.



#### Motivation
A set is the closest thing to a featureless blob you can get outside of
categorical objects


#### Feature
There are many categories, mostly quite unlike the category of sets. So, let us
list some of the special features of the category of sets.
1. The empty set: there is a set $0$ with no elements
2. The one-element set: there is a set 1 with exactly one element
- 1 is a terminal object of $\mathbf{Set}$
3. Products: Any two sets A and B have a product, $A \times B$. Its elements are
   the ordered pairs $(a,b)$ with $a \in A$ and $b \in B$. Ordered pairs are
   familiar from coordinate geometry.

4. Sums: Any two sets A and B have a sum $A+B$
- Sum is sometimes called $\textbf{disjoint union}$ and written as 




#### Galois
1. What is a set? What is a function?
- Instead of defining a set to be a such-and-such and a function to be a
  such-an-such else, we list some properties that we assume sets and functions
  to have. 
- In other words, we never attempt to say what sets and functions are; we just
  say what you can do with them.
2. In his excellant book Mathematics: A Very short Introduction, Timothy Gowers
   considers the question: 'what is the black king in chess?' He swiftly points
   out that this question is rather peculiar.
- It is not important that the black king is a small piece of wood, painted a
  certain colour and carved into a certain shape. We could equally well use a
  scrap of paper with 'BK' written on it.
- What matters is what the black king does: it can move in certain ways but not
  others, according to the rules of chess.
- Similarly, we might not be able to say directly what a set or function 'is',
  but we agree that they are to satisfy all the properties on the list. So the
  list of properties acts as an agreement on how to use the words 'set' and
  'function', just as rules of chess act as an agreement on how to use the chess
  pieces.

