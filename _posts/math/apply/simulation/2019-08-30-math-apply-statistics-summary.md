---
layout: post
title: "Statistics: summary"
keywords: ["probabiltiy"]
description: ""
category: "math"
tags: ["apply","P.A.S.","statistics","summary"]
---
{% include JB/setup %}


#### Sampling
Sampling is important in simulation, and the methods vary a lot according to the
target distribution. The cases are as follows:

1. The most basic case is a the probability distribution with one random
   variable, for both continueous variable and discrete variable. There are two
   solutions:
- Inversion method for generating random variables.
- Construct a sophisticated random variable.


2. In some cases, the probability distribution is not fully understand, and only
   part of it is accessible. Researchers develop the following trick for
   different cases.
- Only the ratio of the probability of any two values of a random variable is
  known: MCMC
- Multiple random variables get involved: Gibbs




#### Galois
For many(in fact, most!) probability distributions, there is no simple, direct
way to simulate(on a computer) random variables having such a distribution.


