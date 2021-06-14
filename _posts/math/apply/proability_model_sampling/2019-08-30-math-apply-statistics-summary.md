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



#### Probability theory vs statistical model
Probabiliy theory is primarily concerned with calculating various quantities
assosiated with a probabiliy model. This requires that we know what the correct
probability model is.

In application, this is often not the case, and the best we can say is that the
correct probability measure to use in a set of possible probabiliy measures. We
refer to this collection as the statistical model.
- So, in a sense, our uncertainty has increased; not only do we have the
  uncertainty associated with an outcome or response as described by a
  probability measure, but now we are also uncertain about what the probability
  measure is.
