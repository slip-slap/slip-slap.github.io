---
layout: post
title: "A.A.: Group Action"
keywords: []
description: ""
category: "math"
tags: ["構造","A.A."]
---
{% include JB/setup %}


#### Group Action
1. Let $(G,\*)$ be a group and S a set. By a group action of $(G, \*)$ on S we
   mean a map:

$\mu: G \times S \rightarrow S$
such that
- $\forall x,y\in G$, $s\in S$, $\mu (x\*y,s)=\mu(x,\mu(y,s))$
- $\mu(e,s)=s$

##### Remark
1. Notice that there is a natural action of $ \Sigma(S) $ on S:
$
\begin{aligned} \mu: \Sigma(S) \times S & \rightarrow S (f, s) & \rightarrow
f(s) \end{aligned}
$
this is where the definition comes from.

2. Let $(G,\*)$ be a group, there is a natural action of G on itself:
$
\begin{aligned} \mu: G \times G & \rightarrow G (x, y) & \rightarrow x * y
\end{aligned}
$
This is called left regular representation  of G.
3. we define the trivial action of G on S by:
$
\begin{aligned} \mu: G \times S & \rightarrow S (g, s) & \rightarrow s \forall
s \in S, g \in G \end{aligned}
$

4. There is another natural action of G on itself, this is called conjugation.
$
\begin{aligned} \mu: G \times G & \rightarrow G (x, y) & \rightarrow x^{-1} *
y * x \end{aligned}
$








#### Definition
Let G be a group acting on a set X.
1. Fixed Point: A fixed point of an element  $g \in G$ is an element  $x \in X such that $g\cdot
x = x$
2. Stabilier: The stabilizer $G_x$ of a point $x \in X$ is the set of elements
   $g \in G $ such taht x if a fixed point of g.
3. The orbit of an elment $x \in X$ is the set of elements $y \in X$ such that
   $g \cdot x =y$ for some $g \in G$.


#### Definition
1. The action is transitive if there is only one orbit: for any $x,y \in X$,
   there is an element $g \in G$ such that $g \cdot x = y$
2. The action is faithful is the intersection of the stabilizers $G_x$ for $x
   \in X$ consists only of the trivial element $e_G$.

