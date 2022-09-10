---
layout: post
title: "G.M.: Independence and Chain"
keywords: [] 
description: 
category: "math"
tags: ["apply","G.M."]
---
{% include JB/setup %}

#### Motivation
Independence is a concept in proability theory, can we identify this in a graph?
The scheme is as follows:
- Define new concept in graph
- Relate them to independence


#### 2. New concept in graph
Let $$ \mathbb{G}=(\mathrm{V}, \mathrm{E}) $$ be a DAG, $$ A \subseteq V $$, $X$
and $Y$ be distinct nodes in $V-A$, and $\rho$ be a chain between $X$ and $Y$.
Then $\rho$ is blocked by A is one of the following holds:
1. There is a node $Z\in A$ on the chain $\rho$, and the edges incident to $Z$ on
   $\rho$ meet head-to-tail at $Z$.
2. There is a node $Z \in A$ on the chain $\rho$, and the edges incident to $Z$
   on $\rho$ meet tail-to-tail at Z.

