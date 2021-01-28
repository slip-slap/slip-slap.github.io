---
layout: post
title: "P.A.S.B.: Introduction"
keywords: []
description: 
category: "math"
tags: ["apply","P.A.S.","Bayesian"]
---
{% include JB/setup %}

#### Introduction
At the heart of the theory of inference is the concept of the statistical
model$f_{\theta}: \theta \in \omega$ that describes the statistician's
uncertainty about how the observed data were produced. 
**all
   uncertainties need to be described by probabilities**, then the prescription of
   a model alone is incomplete.

<img src="{{IMAGE_PATH}}/math-apply-probability-and-statistics-bayesian-inference.png" />

- The spread of the posterior distribution gives some idea of the precision on
  any probability statements we make about $\theta$
- Note how much information the data have added, as reflected in the graphs of
  the prior and posterior densities.



#### 2 Basic rule
1. $$ P(x)=\sum_{y} P(x, y) $$
2. $$ P(x, y)=P(y \mid x) P(x) $$
3. $$ P(y \mid x)=\frac{P(x \mid y) P(y)}{P(x)} $$
4. $$ P(x)=\sum_{y} P(x \mid y) P(y) $$





#### Galois
1. beyond the model and the data, prior belief is introduced into inference,
   that's bayesian inference.
2. Why we called this posterior inference, because we have a prior inference.

