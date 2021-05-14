---
layout: post
title: "Manifold: T-Distributed Stochastic Neighbouring Entities"
keywords: ["t-SNE", "stochastic"]
description: ""
category: "AI"
tags: ["manifold" ]
---
{% include JB/setup %}

#### arichitecture
**t-Distributed stochastic neighbouring embedding(t-SNE) minimizes the divergence between two distributions:
a distribution that measures pairwise similarities of the input objects and a distribution that measures pairwise
similarities of the corresponding low-dimensional points in the embedding.**


#### formula

this formula converts euclidean distance between two points into probability that how alike the points are(the larger distance, the smaller probability):

$$
p_{j | i}=\frac{\exp \left(-\left\|x_{i}-x_{j}\right\|^{2} /\left(2 \sigma_{i}^{2}\right)\right)}{\sum_{k \neq i} \exp \left(-\left\|x_{i}-x_{k}\right\|^{2} /\left(2 \sigma_{i}^{2}\right)\right)}
$$

while for the low dimensional countpart:
$$
q_{j | i}=\frac{\exp \left(-\left\|y_{i}-y_{j}\right\|^{2}\right)}{\sum_{k \neq i} \exp \left(-\left\|y_{i}-y_{k}\right\|^{2}\right)}
$$

the KL divergence:

$$
D_{K L}\left(P_{i} \| Q_{i}\right)=\sum_{i} \sum_{j} p_{j i} \cdot \log \frac{p_{j i}}{q_{j i}}
$$

gradient descent:

$$
\frac{\partial C}{\partial y_{i}}=-\frac{\partial \sum_{i} \sum_{j} p_{j i} \log q_{j i}}{\partial y_{i}}
$$

look at this equation, the number of the independent variable is the number of y. So we differentiate to each
$$y_{i}$$

#### the relation between KL divergence and Maxmizing likelihood

Maximizing likelihood is mimimizing the KL divergence

$$
\begin{aligned} D_{K L}\left[P\left(x | \theta^{*}\right) \| P(x | \theta)\right] &=\mathbb{E}_{x \sim P\left(x | \theta^{*}\right)}\left[\log \frac{P\left(x | \theta^{*}\right)}{P(x | \theta)}\right] \\ &=\mathbb{E}_{x \sim P\left(x | \theta^{*}\right)}\left[\log P\left(x | \theta^{*}\right)-\log P(x | \theta)\right] \\ &=\mathbb{E}_{x \sim P\left(x | \theta^{*}\right)}\left[\log P\left(x | \theta^{*}\right)\right]-\mathbb{E}_{x \sim P\left(x | \theta^{*}\right)}[\log P(x | \theta)] \end{aligned}
$$



#### Reference
1. [tSNE-from-scratch](https://wu-2018.github.io/2018/11/30/tSNE-from-scratch.html)
2. [MLE and KL](https://wiseodd.github.io/techblog/2017/01/26/kl-mle/)

