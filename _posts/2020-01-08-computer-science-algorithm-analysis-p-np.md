---
layout: post
title: "AA: P, NP, NP-completeness"
keywords: []
description: 
category: "CS"
tags: ["AA","Algorithm"]
---
{% include JB/setup %}


####
1. P stands for polynomial time
2. NP stands for nondeterministic polynomial time
- why we have this idea ? why we coined a new term ? there must a reason for
  this, why we divide problem into P and NP, there must be a reason. 
- Suppose you are struggling to solve a problem, after many years effort, you
  still can't nail it, but you solve part of it. we want to preserve you work,
  and in the future, people can focus on the unsolved problems. So part of this
  problem can be solved in polynomial time now, but some can't, and we call this
  NP problem.

3. NP-hard: 
- here we coin a new term again ? why, because we need a yardstick, assume this
  problem is NP-hard, and everyone admit it. So every problem is more difficult
  than this problem is also NP-hard.
- how to compare the difficult among different ? 

4. NP-complete:
- new term again? crap





|                       | Polynomial Time |                   | Polynomial Time
|
|-----------------------|-----------------|-------------------|-----------------|
| Linear Search         | n               | 0/1 Knapsack      |$2^n$ 
|
| Binary Search         | logn            | TSP               |$2^n$
|
| Mergesort             | nlogn           | subset            |$2^n$
|
| Insection             |                 | Graph coloring    |$2^n$
|
| Matrix multiplication | n3              | Hamiltonian cycle |$2^n$
|

