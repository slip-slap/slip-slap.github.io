---
layout: post
title: "Graph Theory: Directed Graphs"
keywords: [""]
description: ""
category: "math"
tags: ["discrete"]
---
{% include JB/setup %}

#### Concept
1. Directed Graph D: a directed graph D is an ordered triple $(V(D),A(D),\psi_D)$ consisting of 
a nonempty set $V(D)$ of vertices, a set $A(D)$, disjoint from $V(D)$, or arcs,
and an incidence function $\psi_D$ that associates with each arc of D an ordered
pair of vertices of D.
- if a is an arc and u van v are vertices such that $\psi_D (a)=(u,v)$, then a
  is said to join u to v;
- u is the tail of a, and v is its head.
- For convenience, 'directed graph' is abbreviated to **digraph**
2. Directed Walk: A directed walk in D is a finite non-null sequence
   $W=(v_0,a_1,v_1,\cdots,a_k,v_k)$, whose terms are alternately vertices and
   arcs,
3. Directed Trail: a directed trail is a directed walk that is a trail.
4. Indegree: the indegree $$
d_{\mathrm{D}}^{-}(v)
$$ of a vertex v in D is the number of arcs with head v
5. Outdegree: the outdegree $$
d_{\mathrm{D}}^{+}(v)
$$ of v is the number of arcs with tail v
- denote the minimum and minimum and maximum indegrees and outdegrees in D by
  $\delta^{-} (D), \Delta^{-} (D)$

#### Idea
1. Reachable: If there is a directed $(u,v)-path$ in D, vertex $v$ is said to be
   reachable from vertex $u$ in D.
2. Diconnected: Two vertices are diconnected in D if each is reachable from the
   other.
3. Strict: A digraph is strict if it has no loops and no two arcs with the same
   ends have the same orientation.

#### Theorem
1. A digraph $D$ contains a directed path of length $\chi-1$

