---
layout: post
title: "Stochastic Process: Combine and Split of PP"
keywords: [] 
description: "statistics theory"
category: "math"
tags: ["apply"]
---
{% include JB/setup %}

#### Poisson Combining
The sum of many small independent arrival processes tends to be close to Poisson
even if the small processes are not.  In a sense, the independence between the
processes overcomes the dependence between successive arrivals in each process.

#### Splitting a Poisson process
Each arrival is switched to $${N_1(t);t>0}$$ with probabiity $$p$$ and otherwise
goes to $${N_2(t);t>0}$$.  View the switch as a Bernoulli process independent of
$${N(t);t>0}$$. A $$p$$ biased coin is flipped independently at each arrival

