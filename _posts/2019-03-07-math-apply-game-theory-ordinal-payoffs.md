---
layout: post
title: "Game Theory: Ordinal Payoff"
keywords: [""]
description: ""
category: "math"
tags: ["apply","G.T."]
---
{% include JB/setup %}


#### Definition
1. A game-frame in strategic form is a list of four items(a quadruple) $
\left\langle I,\left(S_{1}, S_{2}, \ldots, S_{n}\right), O, f\right\rangle
$ where :
- $I = {1,2,\cdots,n}$ is a set of players
- $
\left(S_{1}, S_{2}, \ldots, S_{n}\right)
$ is a list of sets, one for each player, for every Player $i \in I$, $S_i$ is
the set of strategies of Player $i$. We denote by S the Cartesian product of
these sets: $
S=S_{1} \times S_{2} \times \cdots \times S_{n}
$; thus an element of S is a list $s = (s_1,s_2,\cdots,s_n)$ consisting of one
strategy for each player. We call S the set of strategy profiles.
- $O$ is a set of outcomes
- $
f: S \rightarrow O
$ is a function that associates with every strategy profile s an outcome $f(s)
\in O$

2. An ordinal game in strategic form is a quintuple $
\left\langle I,\left(S_{1}, \ldots, S_{n}\right), O, f,\left(\succsim_{1},
\ldots, \succsim_{n}\right)\right\rangle
$
- $
\left\langle I,\left(S_{1}, S_{2}, \ldots, S_{n}\right), O, f\right\rangle
$ is a game-frame in strategic

3. Reduced-form ordinal game in strategic form(called reduced form because some information is lost,
   namely the specification of the outcomes): $
   \left\langle I,\left(S_{1}, \ldots, S_{n}\right),\left(\pi_{1}, \ldots,
   \pi_{n}\right)\right\rangle
   $

#### Notation
1. $
o \succsim_{i} o^{\prime}
$, Player $i$ considers outcome $o$ to be at least as good as $o^{\prime}$
2. $
o \succ_{i} o^{\prime}
$, Player i considers outcome $o$ to be better then $o^{\prime}$
3. $
o \sim_{i} o^{\prime}
$, Player i considers outcome $o$ to be just as good as $o^{\prime}$


####
1. Ordinal utility function: Given a complete and transitive ranking $
\succsim
$ of a finite set of outcomes O, a function $
U: O \rightarrow \mathbb{R}
$ (where $\mathbb{R}$ denotes the set of real numbers) is said to be an ordinal
utility function that represents the ranking $\succsim$, for every two
outcomes $o$ and $o^{\prime}$, $
U(o)>U\left(o^{\prime}\right)
$ if and only if $
o \succ o^{\prime}
$ and $
U(o)=U\left(o^{\prime}\right)
$ 
and only if $
o \sim o^{\prime}
$
- Utility means number


#### Terminology
1. strict dominance: $a$ strictly dominates $b$(or $b$ strictly dominated by $a$) if, in
   every situation(that is, no matter what the other players do), $a$ gives
   Player $i$ a payoff which is greater than the payoff that $b$ gives.
   Formally: for every $
   s_{-i} \in S_{-i}, \pi_{i}\left(a, s_{-i}\right)>\pi_{i}\left(b,
   s_{-i}\right)
   $
2. weak dominance:
3. Cardinal Number is a number says how many of something there are.
4. Ordinal number is a number tells the position of something in a list.


#### Pareto Superior
1. Given an ordinal game in strategic form, let $o$ and $o^{\prime}$ be two outcomes. We say that $o$
is strictly Pareto superior to $o^{\prime}$ if every player prefers $o$ to $o^{\prime}$.
2. We say that $o$ is weakly Pareto superior to $o^{\prime}$ if every player considers $o$ to be at
   least as good as $o^{\prime}$ and as least one player prefers $o$ to $o^{\prime}$.
3. In reduced-form games, this definition can be extended to strategy profiles as follows. If s and
   $s^{\prime}$ are two strategy profiles, then $s$ is strictly Pareto superior to $s^{\prime}$ if
   $\pi_i(s) > \pi_i(s^{\prime})$ for every player i and s is weakly Pareto superior if $\pi_i(s) > \pi_i(s^{\prime})$
   for every Player i and, furthermore, there is a Player j such that $\pi_j(s) > \pi_j(s^{\prime})$


