---
layout: post
title: "Graph Theory: Trees"
keywords: [""]
description: ""
category: "math"
tags: ["discrete"]
---
{% include JB/setup %}

#### Concept 
1. Acyclic graph: An acyclic graph is one that contains no cycles.
2. Tree: a tree is a connected acyclic graph
- If G is a tree, then $\epsilon= v-1$
3. Cut Edge: A cut edge of G is an edge e such that $w(G-e)>w(G)$.
- The term "Cut Edge" is very intuitive and informative, imaging cut a graph
  with with a knife, after the edge is deleted, you have two subgraph, and the
  edge is called cut edge.

##### Edges and Bonds
1. For subsets S and $S^{\prime}$ of V, we denote by $[S,S^{\prime}]$ the set of
   edges with one end in S and the other in $S^{\prime}$
2. Edge Cut: An edge cut of G is a subset of E of the form $[S,\bar{S}]$
- where S is a nonempty proper subset of V
- $\bar{S}=V\S$ 
3. Bond: A minimal nonempty edge cut of G is called a bond
- each cut edge $e$, for instance, gives rise to a bond $\{ e \}$
- If G is connected, then a bond B of G is a minimal subset of E such that $G-B$
  is disconnected.
4. Cotree: If G is connected, a subgraph of the form $\bar{T}$, where T is a
   spanning tree, is called a cotree of G.
- If H is a subgraph of G, the complement of H in G, denoted by $\bar{H} (G)$,
  is the subgraph $G-E(H)$

#### Theorem
1. In a tree, any two vertices are connected by a unique path.
2. A connected graph is a tree if and only if every edge is a cut edge.
-  Every connected graph contains a spanning tree.
- If G is connected, then $\epsilon \geq v-1$
3. Let T be a spanning tree of a connected graph G and let $e$ be an edge of G
   not in T. Then $T+e$ contains a unique cycle.


####  CAYLEY'S FORMULA
1. Contracted: An edge e of G is said to be contracted if it is deleted and its
   ends are identified
- the resulting graph is denoted by $G\cdot e$
- The number of spanning trees of G by $\tau(G)$

#### Theorem
1. If $e$ is a link of G, then $\tau(G)=\tau (G-e)+\tau (G \cdot e)$

<img src="{{IMAGE_PATH}}/math-discrete-graph-theory-trees-spanning-number.png" />
2. $\tau (K_n)=n^{n-2}$

#### Application: Connector Problem
Problem: A railway network connecting a number of towns is to be set up. Given
the cost $c_{ij}$ of constructing a direct link between towns $v_i$ and $v_j$.

#### Galois
1. Tree in the graph just as prime number in integers, Ergodic Morkov Process
   for stochastic process; polynomial family for functional analysis.
