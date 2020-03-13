---
layout: post
title: "S.P.: Countable State Markov Chains"
keywords: [""] 
description: ""
category: "math"
tags: ["apply","S.P."]
---
{% include JB/setup %}

#### Motivation
Markov chains with a countably-infinite state space(more briefly,
countable-state Markov chains) exhibit some types of behavior not possible for
chains with a finite state space.
#### Notation
1. $P_{0j}^n$ is the probability of being in state j at the end of the nth
   transition, conditional on starting in state 0.

i$$
P_{0 j}^{n}=\left(\begin{array}{l}{n} \\ {k}\end{array}\right) p^{k} q^{n-k}
\quad \text { where } k=\frac{j+n}{2}
$$

According to the central limit theorem <br />
$$
\left.P_{0 j}^{n} \sim \frac{1}{\sqrt{2 \pi n p q}} \exp \left[\frac{-(k-n
p)^{2}}{2 p q n}\right]\right\}
\text { where } k=\frac{j+n}{2}
$$

#### Renewal Theory and Markov Chains
1. The matrix approach used to analyze finite-state Markov chains does not
   generalize easily to the countable-state case.
2. Fortunately, renewal theory is ideally suited for this purpose, especially
   for analyzing the long term behavior of countable-state Markov chains.

#### Definition
1. Renewal Process: for a recurrent state j, the sequence of subsequent entries to
state j, conditional on starting in j, forms a renewal process.
2. First-passage-time Probability: $f_{ij}(n)$, of a Markov chain is the
   probability, condtitional on $X_0=i$, that the first subsequent entry to
   state $j$ occurs at discrete epoch n.
3. Birth-death Markov chains: A birth-death Markov chain is a Markov chain in
   which the state space is the set of nonngeative integers; for all $i\geq 0$,
   the transition probabilities satisfy $P_{i,i+1}>0$ and $P_{i+1,i}>0$, and for
   all $|i-j|>1$, $P_{ij}=0$
- death: A transition from state i to i+1 is regarded as a birth and one from
  i+1 to i as a death.
- birth-death processes arise in queueing theory, where the state is the number
  of customers, births are customer arrivals, and deaths are customer
  departures.




#### Reference
1. [Countable State Markov Chains](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-262-discrete-stochastic-processes-spring-2011/course-notes/MIT6_262S11_chap05.pdf)
