---
layout: post
title: "P.A.S.M.I.: Variational Inference"
keywords: [] 
description: ""
category: "math"
tags: ["apply","P.A.S.M.I."]
---
{% include JB/setup %}

#### Motivation
$$
P(\mathbf{x})=\frac{1}{Z} P^{*}(\mathbf{x})=\frac{1}{Z} e^{-E(\mathbf{x})}
$$
- $$E(x)$$ is simple, but not simple enough
- solution: approximate $$P(X)$$ by a simpler distribution $$Q(x;\theta)$$.
  Adjust $$\theta$$ to get the 'best' approximation.
- THen approximate $$
\sum_{x} \phi(x) P(x) \text { by } \sum_{x} \phi(x) Q\left(x ; \theta^{*}\right)
$$






#### Reference
1. [what is variational Inference](https://www.quora.com/What-is-variational-inference)
1. [variational bayes](https://www.cs.princeton.edu/courses/archive/fall11/cos597C/lectures/variational-inference-i.pdf)
