---
layout: post
title: "P.G.M.: Template Based Representation"
keywords: [""] 
description: ""
category: "math"
tags: ["apply"]
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
