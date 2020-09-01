---
layout: post
title: "Game Theory: Strategic-form games with Cardinal Payoffs"
keywords: [""]
description: ""
category: "math"
tags: ["apply","Game Theory"]
---
{% include JB/setup %}

#### Definition
A game-frame in strategic form is a quadruple $
\left\langle I,\left(S_{i}\right)_{i \in I}, O, f\right\rangle
$ where:
1. $I=\{1, \cdots,n \}$ is a set of players
2. For every Player $i \in I$, $S_i$ is the set of strategies of Player $i$, As before, we denote by
   $S=S_1 \times \cdots \times S_n$ the set of strategy profiles
3. $O$ is a set of basic outcomes
4. $
f: S \rightarrow \mathscr{L}(O)
$ is a function that associates with every strategy profile s a lottery over the set of basic
outcomes O.


#### Mixed Strategies
Consider a game in strategic form with cardinal payoffs and recall that $S_i$ denotes the set of
strategies of player $i$. From now on, we shall call $S_i$ the set of pure strategies of Player $i$.
We assume that $S_i$ is a finite set. A mixed strategy of Player $i$ is a probability distribution
over the set of pure strategies $S_i$. The set of mixed strategies of Player $i$ denoted by $\sum_i$



#### Theorem
Every reduced-form game in strategic form with cardinal payoffs 
$
\left\langle I,\left(S_{1}, \ldots, S_{n}\right),\left(\pi_{1}, \ldots, \pi_{n}\right)\right\rangle
$, 
where, for every Player $i \in I$, the set of pure strategies $S_i$ is finite, has at least one Nash
equilibrium in mixed-strategies.

