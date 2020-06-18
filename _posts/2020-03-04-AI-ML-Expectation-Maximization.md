---
layout: post
title: "Expectation Maximization Algorithm"
keywords: ["expectation", "algorithm"]
description: ""
category: "AI"
tags: ["algorithm"]
---
{% include JB/setup %}



#### EM algorithm

EM is an algorithm for maximum the likelihood function

**广义EM算法，E步骤是固定参数优化隐分布，M步骤是固定隐分布优化参数,可以用GMM算作为类比**

#### Jensen's inequality
Jensen's inequality generalizes the statement that the secant line of a convex lies above the graph of the function.
which in Jensen's inequality for two points. The Jensen's inequality is(for $$t\in[0,1]$$):



$$
f\left(t x_{1}+(1-t) x_{2}\right) \leq t f\left(x_{1}\right)+(1-t) f\left(x_{2}\right)
$$

in the context of probability, it is generally stated in the following form, if X is a random variable and 
$$\varphi$$ is a convex function

$$
\varphi(\mathrm{E}[X]) \leq \mathrm{E}[\varphi(X)]
$$

<img src="{{IMAGE_PATH}}/convex.png" height="" width="" />


