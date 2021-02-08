---
layout: post
title: "AA: P, NP, NP-completeness"
keywords: []
description: 
category: "Algorithm"
tags: ["AA"]
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


#### Galois
1. Idea 1: problems can be divided into two classes, one is that can be solved
   in polynomial time, the other is in expontial time.
2. Idea 2: we want to solve expontial problem in polynomial time, the method is
   not clear, only some moves are known, we can this problem can be expressed in
   a way which some moves are clear, some are not, as NP problem
3. Idea 3: is to compare the similarity between different problems. If we can
   convert one hard problem into another hard problem, then they are similar.
   Suppose we have a benchmark, we refer this problem as NP-hard, and problems
   can be reducted or converted as this one, also called NP-hard.
4. Idea 4: some NP-hard problem can be solved in NP algorithm, we call this
   problem NP-complete


#### Reference
1. [P-NP-NP-hard-NP-complete](https://www.youtube.com/watch?v=e2cF8a5aAhE)

