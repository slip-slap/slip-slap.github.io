---
layout: post
title: "P.G.M.: Bayesian Network Representation"
keywords: [""] 
description: ""
category: "math"
tags: ["apply","P.G.M."]
---
{% include JB/setup %}

#### Why we need a Bayesian Network ?
Our goal is to present a joint distribution P over some set of random variables
$\chi = {X_1,\cdots,X_n}$. Even in the simplest case where there variables are
binary-valued, a joint distribution requires the specificationof $2^n-1$
numbers, the probabilities of the $2^n$ different assignments of
values$x_1,\cdots,x_n$. For all the smallest n:
1. The explicit representation of the joint distribution is unmanageable from
   every perspective.
2. Computationally, it is very expensive to manipulate and generally too large
   to store im memory.
3. Cognitively, it is impossible to acquire so many numbers from a human expert,
   moreover, the numbers are very small and do not correspond to events that
   people can reasonably comtemplate.
4. Statistically, if we want to learn the distribution from data, we would need
   ridiculously large amounts of data to estimate this many parameters robustly.


#### Bayesian Network
The core of the Bayesian network representation is a directed acyclic graph(DAG)
$\mathcal{G}$, whose nodes are the random variables in our domain and whose
edges correspond, intuitively, to direct influence of one node on another.This
graph $\mathcal{G}$ can be viewed in two very different ways:
- As a data structure that provides the skeleton for representating a joint
  distribution compactly in a factorized way.
- As a compact representation for a set of conditional independence assumptions
  about a distribution.

<img
src="{{IMAGE_PATH}}/math-apply-probabilistic-graphical-models-bayesian-network-representation-example.png">

1. $P(g^1|i^1,d^1,l^1)=\frac{P(l^1 | g^1,i^1,d^1)P(g^1|i^1,d^1)}{P(l^1 | g^1,i^1,d^1)P(g^1|i^1,d^1)+P(l^1 | g^1,i^1,d^1)P(g^1|i^1,d^1)+P(l^1 | g^1,i^1,d^1)P(g^1|i^1,d^1)}=0.712$

1. Bayesian network structure $\mathcal{G}$:  is a directed acyclic graph whose
nodes represent random variables $X_1,\cdots,X_n$. Let $Pa_{X_i}^{\mathcal{G}}$
denote the parents of $X_i$ in $\mathcal{G}$, and $NonDescendants_{X_i}$ denote
the variables in the graph that are not descendants of $X_i$. 
2. Bayesian network $\mathcal{B}$: network structure together with its CPDs.

#### D-separation
1. Direct Connection: We begin with the simple case, when X and Y are directly
   connected via an edge, say $X \rightarrow Y$. For any network structure
   $\mathcal{G}$ than contains the edge $X \rightarrow Y$, it is possible to
   construct a distribution where X and Y are correlated regardless of any
   evidence about any of the other variables in the network. In other words, if
   X and Y are directly connected, we can always get examples where they
   influence each other, regardless of Z.

