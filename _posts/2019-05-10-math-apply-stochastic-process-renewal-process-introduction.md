---
layout: post 
title: "R.P.: Introduction"
keywords: [] 
description: ""
category: "math"
tags: ["apply","S.P.","R.P."]
---
{% include JB/setup %}
#### Motivation
Much of this chapter will be devoted to understanding the behavior of N(t) and
N(t)/t as t becomes large.


#### Renewal Processes and Poisson Process

1. A renewal process is an arrival process for which the interarrival intervals
$X_1,X_2,\cdots$ are IID. Renewal processes can be specified in three standard
ways.
- the names come from that you start over at each interval.
- The joint distribution of the arrival epochs $S_1,S_2,\cdots$ 
- The joint distribution of the interarrival times $X_1,X_2,\cdots$
- The joint distribution of the counting rv's
2. A Poisson process is a renewal process for which the interarrival rv's are
   exponential


##### Remark 
1. The interarrival are the things that are independent, and the arrival epochs
   are the sum of the interarrival intervals.
- if you know that the first arrival epoch takes 10 times longer than its mean,
  then that the second arrival epoch is going to be kind of long, too.

#### Convergence of Sequences
1. A sequence $b_1,b_2,\cdots$ of numbers is said to converge to a limit b if
   for each real $\epsilon > 0$, there is an integer m such that$|b_n -b|
       \leq\epsilon$ for all $n\geq m$.
- Using the convergence of numbers to be able to talk about convergence of random
variables, and convergence of random variable is indeed not a simple problem.
- For convergence in distribution, it is not the rv's but the distribution of
  the rv's that converge


#### Result of Renewal Process
1. For each sample point $\omega \in \Omega$, $N(t,\omega)/t$ is a nonnegative
   number for each t and $\{N(t,\omega);t>0\}$ is a sample path of the counting
   renewal process, taken from (0,t] for each t. Thus $$
   \lim _{t \rightarrow \infty} N(t, \omega) / t
   $$
   if it exists,is the time-average renewal rate over $(0,\infty)$ for the
       sample point $\omega$
2. E[N(t)/t] also approaches $1/\bar{X}$ as $t\rightarrow \infty$



#### Reference
1. [Renewal Processes](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-262-discrete-stochastic-processes-spring-2011/course-notes/MIT6_262S11_chap04.pdf)


