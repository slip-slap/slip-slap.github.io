---
layout: post
title: "G.M.: Independence and Markov Equivalence"
keywords: [] 
description: 
category: "math"
tags: ["apply","G.M."]
---
{% include JB/setup %}


#### Scheme
1. How does it relate to probability distribution.
2. How to recognize this equivalence.


#### Definition
Let $ \mathbb{G}_{1}=\left(\mathrm{V}, \mathrm{E}_{1}\right) $ and $
\mathbb{G}_{1}=\left(\mathrm{V}, \mathrm{E}_{2}\right) $ be two DAGs containing
the same set of variables V. Then $\mathbb{G_1}$ and $\mathbb{G_2}$ are called
Markov equivalent if for every three mutually disjoint subsets $A,B,C \subseteq
V$, $A$ and $B$ are d-separated by $C$ in $\mathbb{G}_1$ if and only if A and B
are d-separated by $C$ in $\mathbb{G}_2$. 



##### Criterion
Two DAGs $\mathbb{G}_1$ and $\mathbb{G}_2$ are Markov equivalent if and only if
they have the same links(edges without regard for direction) and the same set of
uncoupled head-to-head meetings.



#### DAG pattern
Let gp be a DAG pattern whose nodes are the elements of $V$, and A, B, and C be
mutually disjoint subsets of V. We say A and B are d-separated by C in gp if A
and B are d-separated by C in any DAG G in the Markov equivalence class
represnted by gp.

<img src="{{IMAGE_PATH}}/graphical_model/markov-equivalence-and-DAG-pattern.png" height="" width="" />





