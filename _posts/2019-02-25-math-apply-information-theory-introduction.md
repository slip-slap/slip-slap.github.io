---
layout: post
title: "I.T.: Introduction"
keywords: [""]
description: ""
category: "math"
tags: ["apply","I.T."]
---
{% include JB/setup %}

#### Definition
1. An ensemble X is a triple $(x,\mathcal{A}_X,\mathcal{P}_X)$, where the outcome x
is the value of a random variable, which takes on one of a set of possible
values, which takes on one of a set of possible values,
$\mathcal{A}_X=a_1,a_2,\cdots,a_i,\cdots,a_I$, having probabilities
$\mathcal{P}_X=p_1,p_2,\cdots,p_I$, which $P(x=a_i)=p_i$ and
$$
\sum_{a_{i} \in \mathcal{A}_{X}} P\left(x=a_{i}\right)=1
$$.
- x is an element of $\mathcal{A}_X$,$\mathcal{A}_X$ is a set
- a measure function of the random variable.

2. A joint ensemble XY is an ensemble in which each outcome is an ordered
   pair x,y with $x \in \mathcal{A}_X=a_1,a_2,\cdots,a_i,\cdots,a_I$ and $y \in \mathcal{A}_Y=b_1,b_2,\cdots,b_i,\cdots,b_I$

3. Marginal probability P(x) from the joint probability P(x,y) by summation:
- $$
P\left(x=a_{i}\right) \equiv \sum_{y \in \mathcal{A}_{Y}} P\left(x=a_{i},
y\right)
$$
- $$
P(y) \equiv \sum_{x \in \mathcal{A}_{X}} P(x, y)
$$

#### Probability and Likelihood
1. The likelihood function is not a probability distribution
- If you want to mention the data that a likelihood function is associated with,
  you may say 'the likelihood of the parameters given the data.'

- if $\boldsymbol{\theta}$ denotes the unknown parameters, D denotes the data,
  and $\mathcal{H}$ denotes the overall hypothesis space
$$
P(\boldsymbol{\theta} | D, \mathcal{H})=\frac{P(D | \boldsymbol{\theta},
\mathcal{H}) P(\boldsymbol{\theta} | \mathcal{H})}{P(D | \mathcal{H})}
$$

$$
\text { posterior }=\frac{\text { likelihood } \times \text { prior }}{\text {
    evidence }}
    $$
2. The likelihood principle: given a generative model for data d given
   parameters $\boldsymbol{\theta}$, $P(d|\boldsymbol{\theta})$, and having
   observed a particular outcome $d_1$, all inferenes and predictions should
   depend only on the function  $P(d_1|\boldsymbol{\theta})$
- In spite of the simplicity of this principle, many classical statistical
  methods violate it.
- Probabilities are used to here to quantify degrees of belief. Bayesian uses a
  probability distribution P does not mean that he thinks of the world as
  stochastically changing its nature between the states described by the
  different hypotheses. He use the notation of probabilities to represent his
  beliefs about mutually exclusive hypotheses of which only one is actually
  true.

#### Example
Consider a binary symmetric channel with probability of error f=0.15. Let the
input ensemble be $\mathcal{P}_X: {p_0 =0.9,p_1=0.1}$. Assume we observe y=1.
<br />
$$
\begin{aligned} P(x=1 | y=1) &=\frac{P(y=1 | x=1) P(x=1)}{\sum_{x^{\prime}}
P\left(y | x^{\prime}\right) P\left(x^{\prime}\right)} \\ &=\frac{0.85 \times
0.1}{0.85 \times 0.1+0.15 \times 0.9} \\ &=\frac{0.085}{0.22}=0.39 \end{aligned}
$$

- When I calculate this example, suddenly I realized that $P(y=1|x=1)$ is not a
  probability, something happen to me, I feel so so so good.

#### Galois
1. notation in different subject is different, in information theory, domain of
   random variable are denoted by $\mathcal{A}_X$, but in probabilitic graphical
   model, domain of random variable denoted by $Val(X)$




