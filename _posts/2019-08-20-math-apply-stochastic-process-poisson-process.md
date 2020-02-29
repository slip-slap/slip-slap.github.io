---
layout: post
title: "Stochastic Process: Poisson Process"
keywords: [] 
description: "statistics theory"
category: "math"
tags: ["apply"]
---
{% include JB/setup %}

#### Poisson Distribution 
In probability theory and statistics, Poisson distribution expresses 
the probability of a given number of events occurring in a fixed interval of
time or space. <br />

#### formula

$$
P(k \text { events in interval })=e^{-\lambda} \frac{\lambda^{k}}{k !}
$$

$$\lambda$$ is a parameter which stands for events/time * time period


#### Definition
1. If an arrival process has the stationary and independent increment properties
   and if N(t) has the Poisson PMF for given $\lambda$ and all $t>0$, then the
   process is Poisson
2. If an arrival process has the stationary and independent increment properties
   and satisfies the following incremental condition, then the process is
   Poisson
$$
\operatorname{Pr}\{\widetilde{N}(t,
t+\delta)=n\}=\left\{\begin{array}{ll}{1-\lambda \delta+0(\delta)} & {\text {
    for } n=0} \\ {\lambda \delta+0(\delta)} & {\text { for } n=1} \\
    {0(\delta)} & {\text { for } n \geq 2}\end{array}\right.
$$


#### Poisson Process
A Poisson Process is a model for a series of discrete event where average time
between events is known, but the exact timing of events  is random. The arrival of an event is independent
of the event before.<br />

A Poisson Process meets the following criteria:
1. Events are independent of each other. The occurrence of one event does not affect the probability another event will occur.
2. The average rate(events per time period) is constant
3. Two events cannot occur at the same time.

A more mathmatically definition:
let $$\lambda >0$$. The counting process  $$ \{N(t), t \in[0, \infty)\} $$ is called a Poisson process with rates 
$$\lambda$$ if all the following conditions hold:
1. $$ N(0)=0 $$
2. $$N(t)$$ has independent increments;
3. the number of arrivals in any interval of length $$ \tau >0 $$ has $$Poisson(\lambda\tau)$$ distribution

Example: <br />
<img src="{{IMAGE_PATH}}/poisson-process.png"/>




#### Uniform Distribution and Poisson Process
The joint probability density function of $X_1,X_2,\cdots,X_n$ and the
arrival epoch $S_{n+1}$ is <br />
$$
f_{X_1X_2\cdots,S_{n+1}}(x_1 x_2 \cdots x_n,s_{n+1})=\lambda^{n+1}exp(-\lambda
s_n+1)
$$ <br />
Conditional on $S_{n+1}=t$ <br />
$$
f_{X_{1} \cdots X_{n} | S_{n+1}}\left(x_{1}, \ldots x_{n} |
t\right)=\frac{\lambda^{n+1} e^{-\lambda t}}{\left[\frac{\lambda^{n+1} t^{n}
e^{-\lambda t}}{n !}\right]}=\frac{n !}{t^{n}}
$$

Remark: 
1. In the case n=1,the conditional joint probability states that the event
time $X_1$ is uniformly distributed on $[0,t]$ given the total number of events
observed by time t is 1.
2. if n=2, it is a uniform distribution on a triangle in the $(x_1,x_2)$ plane.
##### Application
1. stock

#### Galois
1. From the second definition of Poisson process, we can see in a point of view
   of Calculus, to deal with probability problem.


#### Reference
1. [poisson distribution and poisson process](https://towardsdatascience.com/the-poisson-distribution-and-poisson-process-explained-4e2cb17d459)
2. [poisson process](https://www.probabilitycourse.com/chapter11/11_1_2_basic_concepts_of_the_poisson_process.php)
3. [如何通俗的理解泊松分布](https://blog.csdn.net/ccnt_2012/article/details/81114920)

