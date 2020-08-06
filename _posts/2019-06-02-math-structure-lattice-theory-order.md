---
layout: post
title: "L.T.: Order"
keywords: []
description: 
category: "math"
tags: ["構造","L.T."]
---
{% include JB/setup %}

#### Definition
1. Ordering: A relation satisfying the following three properties
- Reflexivity: $a \leq a$
- Antisymmetry: $a \leq b$ and $b \leq a$ imply that a = b
- Transitivity: $a \leq b$ and $b \leq a$ that $a \leq c$

2. Ordered set: a nonempty set equipped with such a relation is called an
   ordered set or an order(or a partially ordered set or a poset)


3. An order $ (A ; \varrho) $ consists of a nonempty set A and a binary relation
   $\varrho$ on A such that $\varrho$ satisfies properties reflexivity,
   antisymmetry, and transitivity.

4. Chain: An order $(A; \leq)$ satisfying is called a chain. A chain is,
   therefore, an order in which there are no pairs of incomparable elements

5. Unordered set: we call $(A; \leq)$ an unordered set or an antichain if $a \|
   b$ for all $ a \neq b $.


#### Notation
1. Let $(A;\leq)$ be an order. The elements $a,b \in A$ are comparable if
   $a \leq b$ or $b \leq a$. Otherwise, a and b are incomparable, in notation, 
   $ a \| b $.


#### Order Construction
For an order P, a subset $ A \subseteq P $ is called down-set if 
