---
layout: post
title: "P.A.S.M.I.: Likelihood Inference"
keywords: [""] 
description: ""
category: "math"
tags: ["apply"]
---
{% include JB/setup %}

#### Introduction
1. The likelihood function is one of the most basic concepts in statistical
inference, Entire theores of inference have been constructed based on it.

2. Likelihood inferences are based only on the data $s$ and the model
   $\{P_{\theta} \theta \in \Omega\}$


#### Likelihood Principle
If two model and data combinations yield equivalent likeihood functions, then
inferences about the unknown parameter must be the same.



#### $L(\theta|s)$
$L(\theta|s)$ is simply the probability of $s$ occuring when $\theta$ is the
true value.


#### location normal model
The location normal model is impractical for many applications, as it assumes
that the variance is known, while the mean is unknown. For example, if we are
interested in the distribution of heights in a population, it seems unlikely
that we will know the population variance but not known the population mean.

#### Factorization Theorem
If the density(or probability function) for a model factors as
$f_{\theta}=h(s)g_{\theta}(T(s))$, where $g_{\theta}$ and h are nonnegative,
then T is a sufficient statistic.

#### Sufficient Statistics
The equivalence for inference of positive multiples of the likelihood function
leads to a useful equivalence amongst possible data values coming from the same
model. For example, suppose data values $s_1$ and $s_2$ are such that 
$$L(\cdot|s_1)=cL(\cdot|s_2)$$ for some $c>0$. From the point of view of
likelihood, we are indifferent as to whether we obtained the data $s_1$ or the
data $s_2$, as they lead to the same likelihood ratios. 

#### Maximum Likelihood Estimation(Point Estimate)
When we are interested in a point estimate of $\theta$, then a value
$\hat{\theta}(s)$ that maximizes $L(\theta|s)$ is sensible choice, as this value
is the best supported by the data.<br />
$$
L(\hat{\theta}(s) | s) \geq L(\theta | s)
$$

##### Definition
We call $\hat{\theta}: S \rightarrow \Omega$ for every $\theta \in \Omega$ a
maximum likelihood estimator, and the value $\hat{\theta}(s)$ is called a
maximum likelihood estimate, or MLE for short.




#### Properties
1. consistent:
An estimator is consistent if, as the sample size increase, the
estimates(produced by the estimator) "converge" to the true value of the
parameter estimated. To be slightly more precise-consistency means that, as the
sample size increases, the sampling distribution of the estimator becomes
increasingly concentrated at the true parameter value.

2. unbiased:
on average, it hits the true parameter value. That is, the mean of the sampling
distribution of the estimator is equal to the true parameter.

#### Galois
1. There are two principal paradigms for statistics: this is the sampling
   theory. In sampling theory, also known as frequentis or orthodox statistics,
   one invents **estimators** of quantities of interest and then chooses between
   those estimators using some criterion measuring their sampling properties;
   - The problem is with this theory, thereis no clear principle for deciding
     which criterion to use to measure the performance of an estimator;
   - **Is there any systematic procedure for construction of optimal estimators**
2. In Bayseian inference, **in contrast, once we have made explicit all our
   assumptions about the model and the data, our inferences are mechanical**,
   whatever question we with to pose.
3. Why likelihood inference are so popular, because we want our inferences to
   depend only on **the model**  $\{P_{\theta}: \theta \in  \Omega\}$ and the **data** $s$.

