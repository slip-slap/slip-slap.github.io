---
layout: post
title: "Bayesian: Variational Inference"
keywords: [] 
description: 
category: "math"
tags: ["apply","P.A.S.","Bayesian","inference"]
---
{% include JB/setup %}

#### 1. Motivation
$
P(\mathbf{x})=\frac{1}{Z} P^{*}(\mathbf{x})=\frac{1}{Z} e^{-E(\mathbf{x})}
$
- $E(x)$ is simple, but not simple enough
- solution: approximate $P(X)$ by a simpler distribution $$Q(x;\theta)$$.
  Adjust $\theta$ to get the 'best' approximation.
- THen approximate $
\sum_{x} \phi(x) P(x) \text { by } \sum_{x} \phi(x) Q\left(x ; \theta^{*}\right)
$

#### 2. Method
1. $
D_{\mathrm{KL}}(Q \| P)=\sum Q(x) \log \frac{Q(x)}{P(x)}
$
2. $
D_{\mathrm{KL}}(P \| Q)=\sum_{x} P(x) \log \frac{P(x)}{Q(x)}
$

3. we can substitue $P(x)$ into formula 1, and we got
$
D_{\mathrm{KL}}(Q \| P)=\sum Q(x) \log \frac{Q(x)}{P(x)}
= \sum_{x} Q(x)E(x)+log_e^z-H(Q)
$
4. variational free energy
$
\tilde{F}(\theta)=\sum_{\mathbf{x}} Q(\mathbf{x} ; \theta) E(\mathbf{x})-\sum_{\mathbf{x}} Q(\mathbf{x} ; \theta) \ln \frac{1}{Q(\mathbf{x} ; \theta)}
$







#### Galois
1. The core concept of this method is adjust the parameters.
2. How to adjust the parameters, it can be divided into two steps.




#### Reference
1. [what is variational Inference](https://www.quora.com/What-is-variational-inference)
1. [variational bayes](https://www.cs.princeton.edu/courses/archive/fall11/cos597C/lectures/variational-inference-i.pdf)
