---
layout: post
title: "S.P.: summary"
keywords: []
description: 
category: "math"
tags: ["apply","S.P.","summary"]
---
{% include JB/setup %}

#### Idea
1. Why bother stochastic processes? what's the logical purposes behind why these are done?
2. A practical Problem

<img src="{{IMAGE_PATH}}/math-apply-stochastic-process-summary-example.png"  />

- These are signals collected from a sensor, because of noise, each time, we obtained different signals
- The questions are

1. what if we want to know the averaged value at $t_1$ ? how can we calculated this?

2. If we take a vertical line to cut through at $t_1$, the result we get is a collection of random numbers.
- so we can treat all the values we obtain at $t_1$ as the value of  a random variable, can we?
- of course we can, so we can use the theory we developed in probability to study it's property.

3. What if we want to ask the relationship between the random variable $X_{t1}$ and $X_{t2}$?
- what's the relationship
- so stochastic process can be treat as the functions of random variables.
- At each time slot, we take a vertical line, we get a random variable, and all this random variables form the stochastic process.
- for the very simple bernoulli process, all the random variable all the same, they have the same distribution.
- but it doesn't need to be like this.


#### Definition
- A stochastic process is a mathematical object usually defined as a family of random variables.
First we have idea, than we want to be exact, we give it a definition.


#### Introduction
1. Stochastic processes which are processes that proceed randomly in time.
2. We consider sequences $X_0,X_1,X_2,\cdots$ where $X_n$ represents some random
   quantity at time n.
How do you prevent oil spills? <br />
How do you prevent nuclear plants from going off?<br />
How do you prevent nuclear weapons from falling in the hands of the wrong people?<br />
These again, are probability issues.<br />
If you say there is one change in a billion that something will happen, 3/4 people will say
that's not acceptable. **I don't want any risk, these people are fools**, but unfortunately,
these fools outnumber those of us who have studied these issues.


#### Classification

<img src="{{IMAGE_PATH}}/math-apply-stochastic-process-summary-classification.png"  />

- Just as the other math object, we are concern about it's classification, how many classes?
- From the above picture, we can see there are four classes, the time maybe discrete, and the value may be discrete
- the time and the value are something that we care about.
- Poisson process about counting, the value is discrete.
- Markov chain about different state, the time is discrete.




#### Galois
1. probability and statistics is an apply subject. Knowledge we learn in
   calculus, and set theory all can be used in this subject.
2. Gamma function is from calculus, Jacobian matrix is also from calculus. They
   all can be used to study probability and statistics.
3. What's the difference between stochastic process and probability model?
- In probability, you generate a sampling point one time.
- In stochastic process, you generate a sampling path one time.
- If you treat probability as function, because its factor is a variable.
- the stochastic is functional, becasue its factor is a function.


#### Reference
1. [Stochastic process](https://en.wikipedia.org/wiki/Stochastic_process)

