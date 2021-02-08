---
layout: post
title: "G.T.: Graph and Subgraphs"
keywords: ["bayesian"]
description: ""
category: "math"
tags: ["discrete","G.T."]
---
{% include JB/setup %}

#### Graph, Loop, Link  
1. A graph G is an ordered triple $(V(G),E(G),\psi_G)$ consisting of a nonempty set
V(G) of vertices, a set E(G), disjoint from V(G), of edges, and an **incidence
function** $\psi_G$ that associates with each edge of G an unordered pair of(not
necessarily distinct) vertices of G. If $e$ is an edge and $u$ and $v$ are
vertices such that $\psi_G(e)=uv$, then $e$ is said to join $u$ and $v$;
2. Loop: An edge with identical ends is called a loop.
3. Link: An edge with distinct ends is called a link.
4. Incident: The ends of an edge are said to be incident with the edge
- incidence: the angle at which a ray (such as a ray of light) hits a surface,
  that is the nature meaning of **the world incidence**
5. Adjacent: Two vertices which are incident with a common edge are adjacent, as
   are two edges which are incident with a common vertex.
- When the word adjacent pops up, most times, it means relationgship between two
  vertices.
- There is no unique way of drawing a graph; A diagram of a graph merely
   depicts the incidence relation holding between its vertices and edges.
- We often draw a diagram of a graph and refer to it as the graph itself; in
   the same spirit, we shall call its points 'vertices' and its lines 'edges'.

<br />
####  Special Graphs
1. Simple Graph: A graph is simple if it has no loops and no two of its links
   join the same pair of vertices.
2. Complete Graph: A simple graph in which each pair of distinct vertices is
   joined by an edge is called a complete graph. 
- There is just one complete graph on n vertices; it is denoted by $K_n$ 

<img src="{{IMAGE_PATH}}/math-discrete-graph-theory-graph-and-subgraph.png" />

3. Empty Graph: a graph with no edges.
4. Bipartite graph: a graph whose vertex set can be partitioned into two subsets
   X and Y, so that each edge has one end in X and one end in Y;
5. Complete Biparite Graph: a simple bipartite graph with bipartition (X,Y) in
   which each vertex of X is joined to each vertex of Y; if |X|=m and |Y|=n,
   such a graph is denoted by $K_{m,n}$
6. Trivial and Nontrivial: We call a graph with just one vertex trivial and all
   other graphs nontrivial



#### Notation
1. $v(G)$ denotes the number of vertices.
2. $\epsilon(G)$ denotes the number of edges.
3. When just one graph under discussion, we usually denote this graph by G, We
   omit the letter G from graph-theoretic symbols and write, for instance,
   $V,E,v,\epsilon$ instead of V(G), E(G),v(G) and $\epsilon(G)$

#### Graph Isomporphism
In general, two graphs G and H are said to be isomorphic


#### Incidence and Adjacency Matrices
1. Incidence Matrix:  To any graph G there corresponds a $v\times \epsilon$ matrix called the
incidence matrix
2. Vertices of G: denote by $v_1, v_2,\cdots,v_v$
3. Edges of G: denote by $e_1,e_2,\cdots,e_{\epsilon}$
4. Incidence Matrix of G: denotes by $M(G)=[m_{ij}]$

#### Subgraphs
1. Subgraph: A graph H is a subgraph of G(written $H\subseteq G$) if $V(H)
   \subseteq V(G)$, $E(H) \subseteq E(G)$, and $\psi_H$ is the restriction of
   $\psi_G$ to $E(H)$
2. Proper Subgraph: When $H \subseteq G$ but $$
H \neq G
$$, we wirte $H \subset G$, and call H a proper subgraph of G.
3. Underlying Simple Graph: By deleting from G all loops and, for every pair of
   adjacent vertices, all but one link joining them, we obtain a simple spanning
   subgraph of G, called the underlying simple graph of G.

- Connected: two vertices $u$ and $v$ v are said to be connected if there is a
  $(u,v)$-path in G.
- Connection is an equivalence relation on the vertex set V. Thus there is a
  partition of V into nonempty subsets $V_1,V_2,\cdots,V_w$ such that two
  vertices $u$ and $v$ are connected if and only if $u$ and $v$ belong to the
  same set $V_i$
- Component: the subgraphs $G[V_1],G[V_2],\cdots,G[V_w]$ are called the
  components of G. If G has exactly one component, G is connected, otherwise G
  is disconnected.
4. A Spanning Subgraph: If H is a subgraph of G, G is a supergraph of H, a
   spanning subgraph(or spanning supergraph) of G is a subgraph (or supergraph)
   H with $V(H)=V(G)$

#### Induced Graph
1. Induced Subgraph: Suppose that $V^{\prime}$ is a nonempty subset of V. The
   subgraph of G whose vertex set is $V^{\prime}$ and whose edge set is the set
   of those edges of G that have both ends in $V^{\prime}$ is called the
   subgraph of G induced by $V^{\prime}$ and is denoted by $G[V^{\prime}]$
- The induced subgraph $G[V\V^{\prime}]$ is denoted by $G-V^{\prime}$
- it is the subgraph obtained from G by deleting the vertices in $V^{\prime}$
  together with their incident edges.
- If $V^{\prime}=\{v\}$ we write $G-v$ for $G-\{ v \}$
2. Edge-induced Subgraph: suppose that $E^{\prime}$ is a nonempty subset of E.
   The subgraph of G whose vertex set is the set of ends of edges in $E^{\prime}$ and
   whose edge set is $E^{\prime}$ is called the subgraph of G induced by
   $E^{\prime}$ and denoted by $G[E^{\prime}]$

#### Vertex Degrees
1. The degree $d_G(v)$ of a vertex $v$ in G is the number of edges of G incident
   with $v$, each loop counting as two edges. We denote by $\delta(G)$ and
   $\Delta (G)$ the minimum and maximum degrees, respectively, of vertices of G. 
   <br />
   $$
   \sum_{v \in V} d(v)=2 \varepsilon
   $$

#### Paths and Connection
1. Walk: A walk in G is a finite non-null sequence $W=v_0e_1v_1e_2v_2\cdots
   e_kv_k$, whose terms are alternatively vertices and edges. <br />
   for $1\leq i \leq k$, the ends of $e_i$ are $v_{i-1}$ and $v_i$. We say that
   W is a walk from $v_0$ to $v_k$, or $v_0,v_k$-walk 
2. Origin and Terminus: the vertices $v_0$ and $v_k$ are called the origin and
   terminus of W
3. Internal Vertices: $v_1,v_2,\cdots,v_{k-1}$ its internal vertices
4. Length: the integer k is the length of W.
5. Trail: If the edges $e_1, e_2,\cdots,e_k$ of a walk W are distinct, W is
   called a trail.
6. Path: if the vertices $v_0,v_1,\cdots,v_k$ of a walk W are distinct, W is
   called a path.
7. Connection: Two vertices u and v of G are said to be connected if there is a
   $(u,v)$-pathin G.

#### Cycles
1. Closed Walk: a walk is closed if it has positive length and its origin and
   terminus are the same
1. Cycle: A closed trail whose origin and internal vertices are distinct is a
   cycle.
2. K-cycle: A cycle of length k is called a k-cycle, a k-cycle is odd or even
   according as k is odd or even.
3. Triangle: A 3-cycle is often called a triangle.


#### Bond and Edge Cut
1. Edge Cut: For subsets S and $S^{\prime}$ of V, we denote by $[S,S^{\prime}]$
   the set of edges with one end in S and the other is $S^{\prime}$. 
- An edge cut of G is a subset of E of the form $[S,\bar{S}]$
- Where S is a nonempty proper subset of V and $\bar{S}=V\S$
2. Bond: A minimal nonempty edge cut of G is called a bond.

#### Application: Shortest Path Problem
Problem: Find the shortest $(u_0,v_0)$-path<br />
Solution: Dijkstra Algorithm <br />





#### Galois
1. Learning Graph theory exactly like the learning Riemann Geometry. Manifold,
   submanifold.
2. The definition of degree in graph theory just as the definition of degree in
   differential equation.


