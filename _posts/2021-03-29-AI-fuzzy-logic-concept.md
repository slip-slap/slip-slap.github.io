---
layout: post
title: "FL: Concept"
keywords: []
description: ""
category: "AI" 
tags: ["FL"]
---
{% include JB/setup %}

#### Definition
1. Cardinality: in classical set theory this is the number of elements in a set. This is written as $M(A)$. For a finite fuzzy set we can write:

$M(A)= \sum_{x\in X}{m_A(x)}$
- The intuition behind this formula is that the contribution of an element to
  the cardinality should be weighted with the membership function.
- An element that hardly belongs to the set (very small value of the membership
  function) contributes little to the cardinality of the set.

2. Intersection: given two fuzzy sets A and B, the membership function of the intersection is defined as
$m_c(x)= min{m_A{x},m_B(x)},x \in X$

3. Union: given two fuzzy sets A and B, the membership function of the union is defined as
$m_c(x)= max{m_A{x},m_B(x)},x \in X$

