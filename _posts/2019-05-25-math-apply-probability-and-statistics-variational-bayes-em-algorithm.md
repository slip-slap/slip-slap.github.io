---
layout: post
title: "P.A.S.: Variational Bayes Expectation Maximization Algorithm"
keywords: ["VBEM", "bayes"]
description: ""
category: "math"
tags: ["apply"]
---
{% include JB/setup %}


#### a simple linear regression
Let's look at a basic linear regression. we want to map input into real numbers.
for example, 
1. the input variable is **how many hours of studying and the number of subject taken**
2. the target is **GPA**

given the observation data(x,$$\hat{y}$$), and x has two components, which is the number of hours of 
studying $$x_{1}$$ and the number of subject $$x_{2}$$ <br />

for the linear regression, the target is:  <br />

$$
    L=\frac{1}{2}\|\hat{y}-y\|_{2}^{2}+\frac{\lambda}{2}\|W\|_{2}^{2}
$$

y is given by $$y=W^{T} x $$

the simplest method to get W value is differentiate the target function. But now we get solve the problem
in a different view.
#### solve the problem in bayesian way

2. second we assume the data $$
y \sim N\left(\mu, \sigma^{2}\right)
\text{with  }
\mu=y=W^{T} x
$$

$$
P(\hat{y} | x, W)=N\left(\hat{y} | W^{T} x, \sigma^{2}\right)
$$

3. According to the bayes formula, 
$$
P(W | \hat{y}, x)=\frac{P(\hat{y} | x, W) P\left(W | \mu_{0}, \sigma_{0}^{2}\right)}
{\int_{W} P\left(y^{\prime} | x^{\prime}, W\right) P(W | \hat{y}, x)}
$$

now, consider the denominator,how many possible values of W,W contains three independent parameters,
and each parameter Range is R, so how to calculate the posterior probability?
**how how how**


1. first we assume the parameter 

$$
W=[a_{1},a_{2},b_{0}]
$$

, we can assume 

$$
a1 \sim N\left(\mu_{a1}, \sigma_{a1}^{2}\right)
$$

$$
a2 \sim N\left(\mu_{a2}, \sigma_{a2}^{2}\right)
$$

$$
b0 \sim N\left(\mu_{b0}, \sigma_{b0}^{2}\right)
$$










#### the relationship between MLE and MAP
MLE is a special case of MAP, which prior probability all same




#### Reference
1. [MLE and MAP](https://wiseodd.github.io/techblog/2017/01/01/mle-vs-map/)
