---
layout: post
title: "M.C.: Properties"
keywords: [] 
description: ""
category: "math"
tags: ["apply","S.P.","M.C."]
---
{% include JB/setup %}

**Irreducible:** A Markov chain is *irreducible* if it is possible for the chain
to move from any state to any other state. Equivalently, the Markov chian is
irreducible if for any $i,j \in S$, there is a positive integer $n$ with
$P_i(X_n = j) > 0$.

- A Markov chain is irreducible if its associated transition matrix has 0 entry.


**Aperiodic:** A Markov chian is aperiodic if the period of each state is equal
to 1.


**Theorem:** If a Markov chian has $p_{ij} > 0$ for all $i,j \in S$, then the
chain is irreducible and aperiodic


**Theorem:** Suppose a Markov chain is irreducilbe and aperiodic and has a
stationary distributon $\{\pi_i\}$. Then regardless of the initial distribution
$\{\mu_i\}$, we have $ \lim _{n \rightarrow \infty}
P\left(X_{n}=i\right)=\pi_{i} $ for all states $i$.



