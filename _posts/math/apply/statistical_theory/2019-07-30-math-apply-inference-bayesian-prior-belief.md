---
layout: post
title: "Bayesian: Prior belief"
keywords: []
description: 
category: "math"
tags: ["apply","P.A.S.","Bayesian"]
---
{% include JB/setup %}


#### About prior belief
Bayes theorem entails previous belief about the parameters of a distribution,
then the prior belief is came up. We use prior distribution as an implementation
tool for our prior belief, where *prior belief* is the core concept, and prior
distribution is a representation.


#### Examples

##### 1. Prior belief with bernoulli distribution
The range of the parameter of a bernoulli distribution is from 0 to 1, so the
corresponding prior distribution, representing the prior belief, should has the
same domain. We find that beta function can satisfiy this constraint.
- The parameters of beta function are called hyperparameters.


##### 2. Prior belief with gaussian distribution
The prior distribution of a gaussian distribution is still a gaussian
distribution. 




#### Referene
1. [conjugate
   prior](https://en.wikipedia.org/wiki/Conjugate_prior#:~:text=This%20means%20that%20the%20Gaussian,likelihood%20that%20is%20also%20Gaussian.&text=From%20Bayes'%20theorem%2C%20the%20posterior,the%20probability%20of%20the%20data)
2. [prior probability](https://en.wikipedia.org/wiki/Prior_probability)




