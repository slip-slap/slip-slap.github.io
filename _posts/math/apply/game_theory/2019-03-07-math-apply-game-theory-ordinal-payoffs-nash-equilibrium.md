---
layout: post
title: "Game Theory: Nash Equilibrium"
keywords: [""]
description: ""
category: "math"
tags: ["apply","Game Theory"]
---
{% include JB/setup %}

#### Introduction
Games where either the IDSDS procedure or the IDWDS leads to a unique strategy profile are not very
common. How can one then "solve" games that are not solved by either procedure? The notion of Nash
equilibrium offers a more general alternative.

1. Nash Equilibrium: Given an ordinal game in strategic form with two players, a strategy profile
   $s^*} = (s_1^*,s_2^*) \in S_1 \times S_2$ is a Nash equilibrim if the following
   two conditions are satisfied:
- for every $s_1 \in S_1$, $
\pi_{1}\left(s_{1}^{*}, s_{2}^{*}\right) \geq \pi_{1}\left(s_{1}, s_{2}^{*}\right)
$
- for every $s_2 \in S_2$, $
\pi_{2}\left(s_{1}^{*}, s_{2}^{*}\right) \geq \pi_{2}\left(s_{1}^{*}, s_{2}\right)
$




#### How to find a Nash equilibria
A quick way to find the Nash equilibria of a two-player game is as follows:
1. In each column of the table underline the largest payoff of Player 1 in that column(if there are
   several instances, underline them all) 
2. In each row underline the largest payoff of Player 2 in that row; 
3. If a cell has both payoffs underlined then the corresponding strategy profile is a Nash
   equilibrium.


