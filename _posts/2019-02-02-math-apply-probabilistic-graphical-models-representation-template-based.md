---
layout: post
title: "P.G.M.R.: Template Based Representation"
keywords: [""] 
description: ""
category: "math"
tags: ["apply","P.G.M.","P.G.M.R."]
---
{% include JB/setup %}

#### Concept
1. Stationary Dynamical System: we say that a Markovian dynamic system is
   stationary (also called time invariant or homogeneous), if $P(\mathcal{X}^{(t+1)}|\mathcal{X}^{(t)})$ is
   the same for all t. In this case, we can represent the process using a
   transition model $P(\mathcal{X}^{\prime} | \mathcal{X})$, so that, for any $t\geq 0$ <br />
   $$
   P\left(\mathcal{X}^{(t+1)}=\xi^{\prime} |
   \mathcal{X}^{(t)}=\xi\right)=P\left(\mathcal{X}^{\prime}=\xi^{\prime} |
   \mathcal{X}=\xi\right)
   $$



#### Galois
1. Stochastic processes is an important part of probability and statictics, it
   focus on a variable which is time.
2. Probabilistic graphical models also can be splited into two different parts,
   variable-based model and templated-based model.
