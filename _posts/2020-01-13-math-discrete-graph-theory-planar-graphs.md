---
layout: post
title: "Graph Theory: Planar Graphs"
keywords: [""]
description: ""
category: "math"
tags: ["discrete"]
---
{% include JB/setup %}

#### Concept
1. Planar: A graph is said to be embeddable in the plane, or planar, if it can
   be drawn in the plane so that its edges intersect only at their ends.
- Such a drawing of a planar graph G is called a planar embedding of G.
- A planar embedding $\tilde{G}$ of G can itself be regarded as a graph
  isomorphic to G;
- the vertex set of $\tilde{G}$ is the set of points representing vertices of G,
  the edge sef of $\tilde{G}$ is the set of lines representing edges of G.
- refer to a planar embedding of a planar graph as a plane graph.


<img src="{{IMAGE_PATH}}/math-discrete-graph-theory-planar-graph.png">

2. Jordan Curve: A Jordan curve is a continuous non-self-intersecting curve
   whose origin and terminus coincide.
- Let J be a Jordan curve in the plane. then the rest of the plane is
  partitioned into two disjoint open sets called the interior and exterior of J. 
- We shall denote the interior and exterior of J, respectively, by **int J and ext
  J**, and their closures by **Int J and Ext J**.
- $$
\operatorname{Int} J \cap \operatorname{Ext} J=J
$$
3. Jordan curve theorem: states that any line joining a point in J to a point in
   ext J must meet J in some point.

<img src="{{IMAGE_PATH}}/math-discrete-graph-theory-planar-jordan.png">
#### Theorem
1. A graph G is embeddable in the plane if and only if it is embeddable on the



   sphere.
