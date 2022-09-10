---
layout: post
title: "Stochastic Process: Motivation"
keywords: []
description: 
category: "math"
tags: ["apply","S.P."]
---
{% include JB/setup %}


#### Relationship with probability theory 
Stochastic process are primarily concerned with how events happen as respect to
time, which is a complete new point of view to events.  In most cases, the
reason stochastic process is closely connected to probabiliy just because
single event is associated with probability theory. The classical stochastic
process are as follows:
1. Poisson process: it is a counting process. counting the events is the purpose
   of poisson process, and poisson distribution just happens to related to this.
2. Renewal process: counting a process in which the interarrival are
   independent.
3. Markov process: we also only care about counting. 
4. Martingales: It is also about counting, and the expected sum of the
   counting is zero.

General speaking, stochastic process is about counting, and human being just
study some special counting process.


**Formal Definition:**  Let $X_0, X_1, X_2,\cdots$ be a sequence, where $X_n$
represents some random quantity at time $n$. In general, the value $X_n$ at time
$n$ might depend on the quantity $X_{n-1}$ at time $n-1$, or even the values
$X_m$ for other times $m<n$. We refer to this sequence as stochastic process.


1. The sequence is what we care about.  
-  It maybe samples from a distribution, but it is just a subclass of the
   sequence family. Like the poisson process is counting the total number, which
   is not from any known distribution by now.
- As a sequence, what we care is the impact of history data on the future data.
  Why dirichlet process is a stochastic process, just because it is a sequence,
  the future data is determined by the past data.
- Markov chain is subclass of the sequence family, the current data is only
  influenced by the last one.

- General speaking, we care about sequence.




#### Galois
1. Insight is important for every subject in math, such as the invariant in geometry,
   group operation in algebra, etc.
2. For stochastic process, the study object is the sequence. This sequence could
   be generate from a special distribution. It's fine, however, we want to study
   more general situation, in which each entry is a random variable, and these
   random variable could be identical, or they are not.
3. We want to know the essence of a sequence of random variables. We want to
   know the future according to its history.
4. What does Markov chain mean? Makov simply means memoryless, and Markov chain
   is a special family of these sequences.





