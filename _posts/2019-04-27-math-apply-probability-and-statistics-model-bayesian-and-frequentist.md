---
layout: post
title: "P.A.S.M.: Frequentist and Bayesian"
keywords: 
description: 
category: "math"
tags: ["apply","P.A.S.M."]
---
{% include JB/setup %}

#### Example
Jo has a test for a disease, we denote Jo's state of health by the variable a
and the test result by b. <br />
1. a=1 Jo has the disease
2. a=0 Jo does not have the disease




The essential difference between frequentist and bayesian statisticians is in 

The Bayes's theorem:

$$
P(\theta | x)=\frac{P(x | \theta) P(\theta)}{P(x)}
$$

+ The thing P($$\theta$$\|x) on the left is posterior distribution
+ The thing P($$\theta$$) on the right is prior distribution which presents our pre-existing beliefs.
+ The thing P(x\|$$\theta$$) on the right is likelihood which is depend on our modal and data
+ The thing P(x) on the right is marginal probability which normalises the distribution
There are three different condition
1. most simple, both of X and Y are discrete
2. most difficult, both of X and Y are continuous




#### Example
if you are a frequentist, you will not believe the crap above, let's look at an example:

if the weight of a dog is normal distribution, and we have some data about the dog when we weighted 
the dog at different time. we got the data is (15.3, 14, 17). and now what are the parameters of the normal
distribution ?


if you are a bayesian,
- first, you have a prior distribution which maybe data $$X \sim N(15,2)$$, maybe it's not right, but I don't care.
As you can see, we believe the parameters of $$ \mu $$, it's not a constant, it's distributed with $$ \mu $$ equals 15,and $$
\sigma $$ equals $$ \sqrt{2}$$
- second, you have data, you calculate the probablitity of $$ P(15.3 | 15,2)  $$ $$ P(14 | 15,2)  $$ $$ P(17 | 15,2)  $$.
and now you get the posterior distribution about the parameter of $$ \mu  $$
- finally, according to the posterior distribution of $$ \mu $$, you could make a decision about the parameter of $$ \mu $$

if you are a frequentist,
- first, you believe the $$ \mu  $$ and $$ \sigma $$ of the data distribution are constants
- second, according to center limit theroem, you will use the likelihood function and calculate the stationary value of the likelihood function.
- finally, you get the constants about the $$ \mu $$ and $$ \sigma $$ 

#### Bayesian
1. You cannot do inference without making assumptions.
2. The **big difference** between the two approaches is that Bayesians also use
   probabilities to **describe inferences**.


#### Reference
1. [bayesian](https://en.wikipedia.org/wiki/Bayes%27_theorem)


