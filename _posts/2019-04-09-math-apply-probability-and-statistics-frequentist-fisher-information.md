---
layout: post
title: "P.A.S.F.: Fisher Information"
keywords: []
description: 
category: "math"
tags: ["apply","P.A.S.","P.A.S.F."]
---
{% include JB/setup %}

#### Idea
1. Given this likelihood function about $\theta$, we want to know the shape of of this function ?
- how ?  this idea is really naive, the tangent line of different likelihood function is different?
- if the shape of likelihood is thin, and peaked, it's tangent line would change very quickly, which means the variance is big.
- if the shape of likelihood is flatten, it's tangent line doesn't change a lot, which means the variance of tangeng line is small.

2. this idea is simple, and intuitively, intrinsic.
3. Mathematician are really clever.



### 1. Definition
1. For $ p(X | \theta) $, fisher information is to answer the question: **How
   useful is the random variable X in determining the unkown parameter
   $\theta$**


2. the fisher information is a frequentist concept
3. **The fisher information is a way of measuring the amount of information that
   observable variable X carries about an unknown parameter $\theta$ upoon which
   the probability of X depends.**


#### Terminology: Fisher Information
The Fisher Information is a mearsure for the amount of the information that is
expected within the prototypical trial X about the parameter of interest
$\theta$. It is defined as the variance of the so-called score function,i.e.,the
derivative of the log-likelihood function with respect to the parameter.

$$
I(\theta)=-E\left(\frac{\mathrm{d}^{2}}{\mathrm{d} \theta^{2}} \log f(X | \theta)\right)=-\int_{
    \mathcal{X}}\left(\frac{\mathrm{d}^{2}}{\mathrm{d} \theta^{2}} \log f(x | \theta)\right) 
    f(x | \theta) \mathrm{d} x
$$

- **To calculate $I(\theta)$ we keep $\theta$ fixed and take the expectation with
  respect to all possible outcomes x**
- The above line is very important.



### 2. Application

#### 2.1 Frequentist Paradigm: Sample Size

#### 2.2 Bayesian Paradigm: Default Parameter Prior

#### 2.3 Minimum Description Length Paradigm: Model Complexity

$$
\begin{aligned} 
\mathrm{AIC} &=-2 \log f(\vec{x} | \hat{\theta})+2 d \\
\mathrm{BIC} &=-2 \log f(\vec{x} | \hat{\theta})+d \log (n) \\ 
\mathrm{FIA} &=\underbrace{-\log f(\vec{x} | \hat{\theta})}_{\text
{Goodness-of-fit }}+\underbrace{\frac{d}{2} \log \frac{n}{2 \pi}}_{\text
{Dimensionality }}+\underbrace{\log \left(\int_{\Theta}
\sqrt{\operatorname{det} I(\theta)} \mathrm{d} \theta\right)}_{\text {Geometric
complexity }}
\end{aligned} 
$$



#### Galois
1. why we study fisher information, because we want to use likelihood function,
   especially, **maximum likelihood estimator(MLE)**, so we study the shape of
   the likelihood function
2. we want to the likelihood function function more peaked, more cocentrated, so
   we study the shape, we come up fisher information.
3. **Isn't fisher information is another dual problem ? assuming the probability
   model is known, and the oiginal problem is: given the theta, calculate the
   probability of some events; and the dual problem is, given all the events,
   calulate the statistics in the parameter space.** 



#### Reference
1. [Intuitive explanation of Fisher Information](https://www.quora.com/What-is-an-intuitive-explanation-of-Fisher-information)
2. [知乎fisher information](https://www.zhihu.com/question/26561604?sort=created)
3. [Tutorial on Fisher Information](http://www.alexander-ly.com/wp-content/uploads/2014/09/LyEtAlTutorial.pdf)
4. [fisher information wiki](https://en.wikipedia.org/wiki/Fisher_information)
5. [fisher Information](https://people.missouristate.edu/songfengzheng/Teaching/MTH541/Lecture%20notes/Fisher_info.pdf)
