---
layout: post
title: "P.A.S.M.I.: Model Inference"
keywords: [""]
description: ""
category: "math"
tags: ["apply"]
---
{% include JB/setup %}


#### Inference
1. **Inference, Inference, Inference** maybe the most important thing is
   probability and statistics, model inference, parameters of model inference.

2. In the point of view of a frequentist, maybe the first step is construct an estimator.
3. In the point of view  of a bayesian, there are four basic methods
- Complete enumeration
- Laplace's method
- Monte Carlo method: 
- Variational method


#### Inference Using a Probability Model
we are in a situation in which we feel probability is applicable and that we
have a probability measure P defined on a collection of subsets of a sample
space for a response s.

1. In a statistical application, we do not know the distribution of a response,
   but we know(or are willing to assume) that the true probability distribution
   is one of a set of possible distributions $\{ f_{\theta} \theta \in
   \Omega\}$,where $f_\theta$ is the density or probability function for the
   response. The set of possible distribution is called the **statistical model**
2. The set $\Omega$ is called the parameter space, and the variable $\theta$ is
   called the parameter of the model. Because each value of $\theta$ corresponds
   to a distinct probability distribution in the model, we can talk about the
   true value of $\theta$, as this gives the true distribution via $f_{\theta}$

#### three types of Inference
our primary goal may be to determine not the true $f_\theta$, but some
characteristic of the true distribution such as its mean, median, or the value
of the true distribution function F at a specified value. We will denote this
characteristic of interest by $ \psi(\theta) $. For example, when the
characteristic of interest is the mean of the true disribution of a continuous
random variable,then 
$$
\psi(\theta)=\int_{-\infty}^{\infty} x f_{\theta}(x) d x
$$
Different values of $\theta$ lead to possibly different values for the
characteristic $\psi(\theta)$. After observing the data $s$, we want to make
inferences about what the correct value is. We will consider the three types of
inference for $\psi(\theta)$.

1. Predict an unknown response value s via a prediction t.
2. Construct a subset C of the sample space S that has a high probability of
   containing an unknown response value s.
3. Assess whether or not $s_o \in S$ is a plausible value from the probability
   distribution specified by f.
And corresponding inferences:
1. Choose an estimate $T(s)$ of $\psi(\theta)$, referred to as the **problem of
   estimation**
2. Construct a subset $C(s)$ of the set of possible values for $\psi(\theta)$
   that we believe contains the true value, referred to as the problem of
   credible region or confidence region construction.
3. Assess whether or not $\psi_o$ is a plausible value for $\psi(\theta)$ after
   having observed s, referred to as the problem of hypothesis assessment.

 

