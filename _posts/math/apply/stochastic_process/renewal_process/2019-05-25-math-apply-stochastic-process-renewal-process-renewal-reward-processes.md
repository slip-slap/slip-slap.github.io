---
layout: post 
title: "R.P.: Renewal Rewards"
keywords: [] 
description: ""
category: "math"
tags: ["apply","S.P.","R.P."]
---
{% include JB/setup %}

#### Motivation
There are many situations in which, along with a renewal process ${N(t); t >
0}$, there is another randomly varying functions of time, called a reward
function ${R(t); t>0}$. 
- $R(t)$ models a rate at which the process is accumulating a reward.
- We shall illustrate many examples of such processes and see that a "reward"
  could also be a cost or any randomly varying quantity of interest.
- The important restriction on these reward functions is that $R(t)$ at a given
  t depends only on the location of t within the inter-renewal interval
  containing t and perhaps other random variables local to that interval.




#### Time-average Residual Life
$$
\int_{0}^{t} y(\tau) d \tau=\frac{1}{2} \sum_{i=1}^{n(t)}
x_{i}^{2}+\int_{\tau=s_{n(t)}}^{t} y(\tau) d \tau
$$

<img
src="{{IMAGE_PATH}}/math-apply-stochastic-process-renewal-rewards-residual-life.png" />

#### Galois
Professor said: "I think after many years finally I understand it, I hope I can make it easy for
you to understand it." so modest !!!
