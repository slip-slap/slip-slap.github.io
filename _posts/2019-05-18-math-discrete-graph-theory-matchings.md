---
layout: post
title: "G.T.: Matchings"
keywords: [""]
description: ""
category: "math"
tags: ["discrete","G.T."]
---
{% include JB/setup %}

#### Concept 
1. matching: A subset M of E is called a matching in G if its elements are links
   and no two are adjacent in G
- the two ends of an edge in M are said to be matched under M.
- A matching M saturates a vertex v, and v is said to be **M-saturated**,
  otherwise, v is **M-unsaturated**.
- If every vertex of G is M-saturated, the matching M is perfect.
2. M-alternating path: An M-alternating path in G is a path whose edges are
   alternately in E\M and M.
3. M-augementing path: an M-augmenting path is an M-alternating path whose
   origin and terminus are M-unsaturated.

#### Concept 
1. covering: A covering of a graph G is a subset K of V such that every edge of
   G has at least one end in K.
2. minimum covering: A covering K is a minimum covering if G has no covering
   $|K^{\prime}|<|K|$
<img src="{{IMAGE_PATH}}/math-discrete-graph-theory-matching-covering.png" />

#### Application: Personnel Assignment Problem
In a certain company, n workers $X_1,X_2,\cdots,X_n$ are available for n jobs
$Y_1,Y_2,\cdots,Y_n$, each worker being qualified for one or more of these jobs.
can all the men be assigned, one man per job, to jobs for which they are
qualified?


#### Galois
1. Just as the other branches in mathematician. we are trying to divide the
   graph to very very small concept, such as mathing, covering, bond, block,
   independent set. I think maybe it is also another **group theory**


