---
layout: post
title: "P.A.S.M.: Generating Functions"
keywords: ["probabiltiy"]
description: ""
category: "math"
tags: ["apply","P.A.S."]
---
{% include JB/setup %}

#### Introduction
Let X be a random variable. 
1. The cumulative distribution function of X, defined by $F_X(x)=P(X \leq x)$,
   contains all the information about the distribution of X.
2. It turns out that there are other functions, the **probability-generating
   function** and the **moment-generating function**, also provide
   information(sometimes all the information) about X and its expected values.


#### Probability Generating Function
#### Moment
Definition: Let X be a random variable, and let k be a positive integer. Then
the kth moment of X is the quantity $E(X^k)$, provided this expectation exists.
1. First moment$E(X)$ is just the mean of the random, This can be taken as a measure
   of where the central mass of probability for X lies in the real line.
2. The second moment $E(X^2)$, together with the first moment, gives us the
   variance through $Var(X)=E(X^2)-(E(X))^2$
3. Therefore, the first two moments of the distribution tell us about the
   location of the distribution and the spread of that distribution about the
   mean. In fact, the higher moments also provide information about the
   distribution.

#### Characteristic Functions
1. the characteristic function of any real-valued random variable completely defines its probability distribution.
2. the characteristic function is the Fourier transform of the probability density function.
3. Thus it provides the basis of an alternative route to analytical results compared with working with probability density function or
cumulative distribution.
Definition: Let X be any random variable, Then we define its characteristic
function,$c_X$, by <br />
$c_X(s)=E(e^{isX})$ <br />
for $s \in R^1$

