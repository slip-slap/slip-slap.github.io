---
layout: post
title: "P.P.: Definition"
keywords: [] 
description: ""
category: "math"
tags: ["apply","S.P."]
---
{% include JB/setup %}

**Counting Process:** A stochastic process ${N(t), t \geq 0}$ is said to be a
counting process if $N(t)$ represents the total number of 'events' that have
occurred up to time $t$. Hence, a counting process $N(t)$ must satisfy

1. $N(t) \geq 0$
2. $N(t)$ is integer valued
3. if $s \leq t$, then $N(s) \leq N(t)$
4. For $s < t$, $N(t) - N(s)$ equals the number of events that have occurred in
   the interval $(s,t]$

A counting process is said to possess independent increments if the numbers of
events that occur in disjoint time intervals are independent.






#### Poisson Combining
The sum of many small independent arrival processes tends to be close to Poisson
even if the small processes are not.  In a sense, the independence between the
processes overcomes the dependence between successive arrivals in each process.

#### Splitting a Poisson process
Each arrival is switched to $${N_1(t);t>0}$$ with probabiity $$p$$ and otherwise
goes to $${N_2(t);t>0}$$.  View the switch as a Bernoulli process independent of
$${N(t);t>0}$$. A $$p$$ biased coin is flipped independently at each arrival

