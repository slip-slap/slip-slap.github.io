---
layout: post
title: "Stochastic Process: Little's Theorem"
keywords: [""] 
description: ""
category: "math"
tags: ["apply"]
---
{% include JB/setup %}

#### Motivation
what is N(t) at some finite value of t, N(t) is a random variable at some finite
value of t. So you can't evaluate it. **But at least you would like to know what
its expected value is. Even you don't know the expected value, you would like to
know the bound of the expected value.** 
- this just the difference between random variable(in nature are function) and
  common functions, we can't evaluate the function, but we can evaluate its
  expectation 
- I think this is the basic cornerstone of probability and statistics.
- People who study renewal theory have spent an enormous amount of time to find
  the expected value of N(t).

#### Define a Stopping Trial
1. N(t) is not a stopping trial
2. N(t)+1 is a stopping trial(first arrival occurs after time t)

#### Example
1. Departure process is not a renewal process, because every once in a while,
   the servers stop doing anything.

#### M/G/1
1. The stopping rule J here is the index of the first arrival in a new busy
   period. The arrivals and departures in the new busy period are independent
   and identically distribuated to those in the old.
- Thus the intervals between new busy periods form a renewal process.

2. Assume the system empties out eventually WP1 and that it restarts on the next
   arrival.
3. intervals between restartings form a renewal process for the G/G/1 queue, and
   for an even broader class of queues.

<img src="{{IMAGE_PATH}}/math-apply-stochastic-process-little-theorem.png" />

$$
\int_{0}^{S_{1}^{\mathrm{r}}} L(\tau) d
\tau=\sum_{i=0}^{N\left(S_{\mathrm{I}}^{\mathrm{r}}\right)-1} W_{i}
$$
- Why we can write in this way, it's the lebesugue integral.

These embedded renewals are in fact function of both the arrival process and the
service distribution.

#### Littles's Theorem
Little's theorem is an important queueing result stating that the expected
number of customers in a queueing system is equal to the product of the arrival
rate and the expected time each customer waits in the system.


#### Galois
1. Mathematician never give up!!! I want to find the expected value of N(t), but
   I can't, The only thing I can do is find a lower bound of the expected value.
   After that, I begin to try find an upper bound.
