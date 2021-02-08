---
layout: post
title: "Dynamic Model: Hidden Markov Model"
keywords: []
description: ""
category: "AI"
tags: ["D.M."]
---
{% include JB/setup %}

#### 1. Problem

#### 2. Model Architecture
<img src="{{IMAGE_PATH}}/ai-dynamic-model-hmm-introduction.png" height="" width="" />

- Discrete Transition Probability
$$ p\left(q_{t} \mid q_{1}, \ldots, q_{t-1}, y_{1}, \ldots,
y_{t-1}\right)=p\left(q_{t} \mid q_{t-1}\right) $$

- Measurer 
$$
p\left(y_{t} \mid q_{1}, \ldots, q_{t-1}, q_{t}, y_{1}, \ldots,
y_{t-1}\right)=p\left(y_{t} \mid q_{t}\right)
$$


#### 3. Model Parameters
1. $ \lambda=\{A, B, \pi\} $
- $\pi$ is the probability of the initial state
- A is the state transition matrix

2. Major operations
- Evaluate $p(Y|\lambda)$: it needs the backward and forward algorithm
- $ \lambda_{\mathrm{MLE}}=\underset{\lambda}{\arg \max } p(Y \mid \lambda) $,
  it needs EM algorithm
- $ \underset{Q}{\arg \max } p(Y \mid Q, \lambda) $


