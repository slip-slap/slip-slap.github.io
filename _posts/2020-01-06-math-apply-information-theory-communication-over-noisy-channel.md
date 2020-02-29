---
layout: post
title: "I.T.: Communication over a Noisy Channel"
keywords: [""]
description: ""
category: "math"
tags: ["apply"]
---
{% include JB/setup %}

<img
src="{{IMAGE_PATH}}/math-apply-information-theory-communication-over-noisy-channel.png">

#### Concept
1. A discrete memoryless channel Q: is characterized by an input alphabet
   $A_{\mathcal{X}}$, an output alphabet $A_{\mathcal{Y}}$, and a set of
   conditional probability distributions $P(y|x)$, one for each $x \in
   $A_{\mathcal{X}}$

#### The Capacity of a channel Q is:
$$
C(Q)=\max _{\mathcal{P}_{X}} I(X ; Y)
$$
- The distribution $\mathcal{P}_X$ that achieves the maximum is called the
  optimal input distribution, denoted by $\mathcal{P}_X^{\star}$

#### Concept
1. An (N,K) block code for a channel Q is a list of $S=2^K$ codewords 

#### Shannon's noisy-channel coding theorem
Associated with each discrete memoryless channel, there is a nonnegative number
C(called the channel capacity) with the following property. For any $\epislon >0$
and $R<C$, for large enough N, there exists a block code of length N and are
$\geq R$ and a decoding algorithm, such that the maximal probability of block
error is $\leq \epislon$


