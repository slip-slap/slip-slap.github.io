---
layout: post 
title: "S.P.: Wald's Equality"
keywords: [""] 
description: ""
category: "math"
tags: ["apply","S.P."]
---
{% include JB/setup %}

#### Motivation
Gambling

1. defective random variable: it means there is some probability that J is going
to be infinite
2. Indicator random variable: An indicator random variable is a special kind of
   random variable associated with the occurence of an event. The indicator
   random variable $I_A$ associate with event A has value 1 if event A occurs
   and has value 0 otherwise. In other words, $I_A$ maps all outcomes in the set
   A to 1 and all outcomes outside A to 0.
#### Definition
1. A stopping trial(or stopping time) J for a sequence of rv's
   $X_1,X_2,\cdots,$ is a positive integer-valued rv such that for each $n\geq 1$,
   the indicator rv $$
   \mathbb{I}_{\{J=n\}}
   $$ is a function of $X_1,X_2,\cdots,X_n$.
- stopping trail doesn't need IID random variables
2. Generalized Stopping Trial: for a sequence of pairs of rv's $(X_1,V_1),(X_2,V_2) \cdots$
   is a positive integer-valued rv such that, for each $n\geq 1$, the indicator
   rv $\mathcal{I}_{\{J=n\}}$ is a function of $X_1,V_1,X_2,V_2,\cdots,X_n,V_n$
   where each pair


2. Wald's Equality: Let $\{X_n;n\geq 1\}$ be a sequence of IID rv's, each of
   mean $\bar{X}$. If J is a stopping trial for $\{X_n;n\geq 1\}$ and if $E[J]<
   \infty$, then the sum $S_J=X_1+X_2+\cdots + X_J$ at the stopping trial J
   satisfies <br />
   $$
   E[S_J]=\bar{X}E[J]
   $$
4. Generalized Wald's Equality:
   is independent and identically distributed(IID) to all other pairs. Assume
   that each X_i has finite mean $\bar{X}$. If J is a stopping trial for $\{
    (X_n,V_n); n \geq 1   \}$
#### Proof
$$
\begin{aligned} \mathrm{E}\left[S_{J}\right] &=\sum_{n} \mathrm{E}\left[X_{n}
\mathbb{I}_{J \geq n}\right] \\ &=\sum_{n} \mathrm{E}\left[X_{n}\right]
\mathrm{E}\left[\mathbb{I}_{J \geq n}\right] \\ &=X \sum_{n}
\mathrm{E}\left[\mathbb{I}_{J \geq n}\right] \\ &=X \sum_{n}^{n}
\operatorname{Pr}\{J \geq n\}=\overline{X E}[J] \end{aligned}
$$
- E(XY)=E(X)E(Y) if X and Y are independent.
- If you are playing a fair game, your expected gain is the expected gain for
  trail times the expected number of times you play.

#### Application of Wald's Equality
Consider the possibly-defective stopping trial J where is the first n for which
$S_n=X_1+\cdots +X_n=1$, the first trial at which the gambler is ahead.<br />
According to Wald's equality<br />
$$
E[J]=\frac{1}{X}=\frac{1}{2 p-1}
$$

#### Galois
1. math is very simple if you are familiar with the basic definition.
