---
layout: post
title: "Statistics: Bayesian Statistics: Normal-Normal Model"
keywords: [] 
description: 
category: "math"
tags: ["apply","P.A.S","statistics"]
---
{% include JB/setup %}


**Example:** Suppose that we have a class of $n=30 students who have taken an
exam, and the mean grade was $\bar{x}=75$ with a standard deviation of
$\sigma=10$. We have taught the class many times before, and past test means
have given us an overall mean $\mu$ of 70, but the class means have varied over
time giving us a standard deviation of the class means of $\tau = 5$


Our goal is to update our knowledge of $\mu$, the unobservable population mean
test score with the new test grade data; i.e., we with to find $p(\mu \mid X)$
where X is the new test data. Using bayes' rule:

$$
p(\mu \mid X) \propto p(X \mid \mu) p(\mu)
$$

where $p(\mu \mid X)$ is the likelihood function for the current data and
$p(\mu)$ is the prior for the test mean.


$$
p(X \mid \mu)=\prod_{i=1}^{n} \frac{1}{\sqrt{2 \pi \sigma^{2}}} \exp
\left\{-\frac{\left(x_{i}-\mu\right)^{2}}{2 \sigma^{2}}\right\}
$$

$$
p(\mu)=\frac{1}{\sqrt{2 \pi \tau^{2}}} \exp \left\{-\frac{(\mu-M)^{2}}{2
\tau^{2}}\right\}
$$


$$
p(\mu \mid X) \propto \frac{1}{\sqrt{\tau^{2} \sigma^{2}}} \exp
\left\{\frac{-(\mu-M)^{2}}{2
\tau^{2}}+\frac{-\sum_{i=1}^{n}\left(x_{i}-\mu\right)^{2}}{2 \sigma^{2}}\right\}
$$



After a bit of algebra, the mean can be re-written as

$$
\frac{\frac{1}{\tau^{2}}}{\frac{1}{\tau^{2}}+\frac{n}{\sigma^{2}}}
M+\frac{\frac{n}{\sigma^{2}}}{\frac{1}{\tau^{2}}+\frac{n}{\sigma^{2}}} \bar{x}
$$

and the variance can be re-written as

$$
\frac{\frac{\sigma^{2}}{n} T^{2}}{\tau^{2}+\frac{\sigma^{2}}{n}}
$$

Note that the mean is a weighted average of the prior mean $M$ and the mean
$\bar{x]$. The weight on the prior mean is inversely proportional to the
variance of the prior mean($1/\tau^2$), and the weigth on the data mean is
inversely proportion to the variance of the data mean($n/\sigma^2$). This make
sence, right? 

#### Reference
1. [Bayesian statistics](https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxiYXllc2VjdHxneDplNGY0MDljNDA5MGYxYTM)



