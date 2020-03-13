---
layout: post
title: "P.A.S.: Fisher Information"
keywords: []
description: 
category: "math"
tags: ["apply","P.A.S."]
---
{% include JB/setup %}

#### what is the crap fisher information ?

1. For $$
p(X | \theta)
$$, fisher information is to answer the question: <br />
**How useful is the random variable X in determining the unkown parameter $$\theta$$**


2. the fisher information is a frequentist concept
3. **The fisher information is a way of measuring the amount of information that
   observable variable X carries about an unknown parameter $\theta$ upoon which
   the probability of X depends.**


#### Terminology: Fisher Information
The Fisher Information is a mearsure for the amount of the information that is expected within the
prototypical trial X about the parameter of interest $\theta$. It is defined as the variance of the 
so-called score function,i.e.,the derivative of the log-likelihood function with respect to the parameter.

$$
I(\theta)=-E\left(\frac{\mathrm{d}^{2}}{\mathrm{d} \theta^{2}} \log f(X | \theta)\right)=-\int_{
    \mathcal{X}}\left(\frac{\mathrm{d}^{2}}{\mathrm{d} \theta^{2}} \log f(x | \theta)\right) 
    f(x | \theta) \mathrm{d} x
$$

- **To calculate $I(\theta)$ we keep $\theta$ fixed and take the expectation with
  respect to all possible outcomes x**
- The above line is very important.

#### Example


####  marker
1. X denotes a prototypical trial


#### application
1. In the view of frequentist, Fisher information is used to determine the sample size with which
we design an experiment.
2. In Bayesian, Fisher information is used to define a default parameter prior.
3. Fisher information is used to measure model complexity.



#### Galois
1. why we study fisher information, because we want to use likelihood function,
   especially, **maximum likelihood estimator(MLE)**, so we study the shape of
   the likelihood function
2. we want to the likelihood function function more peaked, more cocentrated, so
   we study the shape, we come up fisher information.

#### Reference
1. [Intuitive explanation of Fisher Information](https://www.quora.com/What-is-an-intuitive-explanation-of-Fisher-information)
2. [知乎fisher information](https://www.zhihu.com/question/26561604?sort=created)
3. [Tutorial on Fisher Information](http://www.alexander-ly.com/wp-content/uploads/2014/09/LyEtAlTutorial.pdf)
4. [fisher information wiki](https://en.wikipedia.org/wiki/Fisher_information)
5. [fisher
   Information](https://people.missouristate.edu/songfengzheng/Teaching/MTH541/Lecture%20notes/Fisher_info.pdf)
