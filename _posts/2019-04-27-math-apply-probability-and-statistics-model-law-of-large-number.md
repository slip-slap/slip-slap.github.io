---
layout: post
title: "P.A.S.M.: Law of Large Number"
keywords: []
description: 
category: "math"
tags: ["apply","P.A.S.M."]
---
{% include JB/setup %}

#### What is the crap of Sampling Distribution?
1. Suppose $X_1,X_2,\cdots,X_n$ is an identically and independently distributed
   sequence, i.e.,$X_1,X_2,\cdots,X_n$ is a sample from some distribution, and
   we are interested in the distribution of a **new random variable** $Y=h($X_1,X_2,\cdots,X_n$)$ for
   some function h.
2. In particular, we might want to compute the distribution function of Y or
   perhaps its mean and variance. The distribution of Y is sometimes referred to
   as its **sampling distribution**
3. As Y is based on a sample form some underlying distribution.


#### Convergence
1. Convergence in probability:
A sequence of rv's $Z_1,Z_2,\cdots$ converges
   in probability to a rv Z if 
$$
\lim _{n \rightarrow \infty}
\operatorname{Pr}\left\{\left|Z_{n}-Z\right|>\epsilon\right\}=0
$$ for every $\epsilon > 0$
2. Convergence in distribution:
A sequence of rv's $Z_1,Z_2,\cdots$ converges
   in distribution to a random variable $Z$ if 
$$
\lim _{n \rightarrow \infty} \mathrm{F}_{Z_{n}}(z)=\mathrm{F}_{Z}(z)
$$
at each $z$ for which $F_Z(z)$ is continuous.
3. Convergence in mean square(MS): A sequence of rv's $Z_1,Z_2,\cdots$ converges
   in mean square(MS) to a rv Z if 
$$
\left.\lim _{n \rightarrow \infty}
\mathrm{E}\left[\left(Z_{n}-Z\right)^{2}\right]\right\} 0
$$

4. Convergence with probability 1(WP1):
Let $Z_1,Z_2,\cdot$ be a sequence of rv's in a sample space $\Omega$ and let Z
be another rv in $\Omega$. Then $\{ Z_n; n\geq 1\}$ is defined to converge to Z
with probability(WP1) if 
$$
\operatorname{Pr}\left\{\omega \in \Omega: \lim _{n \rightarrow \infty}
Z_{n}(\omega)=Z(\omega)\right\}=1
$$



#### Basic Operator
1. Expectation E(X)
$$
\mathrm{E}[\mathrm{a} \mathrm{x}+\mathrm{b}]=\mathrm{aE}[\mathrm{X}]+\mathrm{b}
$$

**you can treat expection is a linear operator**
**you can treat expection is a linear operator**
**you can treat expection is a linear operator**
**Just unbelievable !!!**
2. Variation D(X)
$$
D(\mathrm{X})=\mathrm{E}\left[(\mathrm{X}-\mathrm{m})^{2}\right]
$$ <br />
$$
D(X)=E(X^2)-m^2 
$$
where m is the expected value E(X)

$$
\operatorname{D}[a X+b]=a^{2} \operatorname{D}(X)
$$

3. Proof
$$
\begin{array}{l}{=\mathrm{E}\left[\mathrm{a}^{2} \mathrm{X}^{2}+2 \mathrm{ab}
\mathrm{X}+\mathrm{b}^{2}\right]-(\mathrm{aE}(\mathrm{X})+\mathrm{b})^{2}} \\
{=\mathrm{a}^{2} \mathrm{E}\left(\mathrm{X}^{2}\right)+2 \mathrm{ab}
\mathrm{E}(\mathrm{x})+\mathrm{b}^{2}-\mathrm{a}^{2}
\mathrm{E}^{2}(\mathrm{x})-2 \mathrm{abE}(\mathrm{x})-\mathrm{b}^{2}} \\
{=\mathrm{a}^{2} \mathrm{E}\left(\mathrm{X}^{2}\right)-\mathrm{a}^{2}
\mathrm{E}^{2}(\mathrm{x})=\mathrm{a}^{2}
\operatorname{Var}(\mathrm{X})}\end{array}
$$

#### Example: mean and variance of sample 
$$
E(\bar{X})=E\left(\frac{X_{1}+X_{2}+\cdots+X_{n}}{n}\right)
$$
<br />
$$
E(\bar{X})=\frac{1}{n}\left[E\left(X_{1}\right)+E\left(X_{2}\right)+\cdots+E\left(X_{n}\right)\right]
$$
<br />
$$
\operatorname{D}(\bar{X})=\operatorname{D}\left(\frac{X_{1}+X_{2}+\cdots+X_{n}}{n}\right)
$$
<br />

$$
\operatorname{D}(\bar{X})=\operatorname{D}\left(\frac{1}{n}
X_{1}+\frac{1}{n} X_{2}+\cdots+\frac{1}{n} X_{n}\right)
$$
<br />

#### Example 2:
$S_n-n\bar{X}$





#### Introduction
Inequalities, or bounds, play an unusually large role in probability. Part of
the reason is their frequent use in limit theorems and part is an inherent
imprecision in probability application.

#### Markov Inequality
If Y is a non-negative rv with an expectation E[Y], then for any real $y>0$

#### Chebyshev Inequality
If Z has a mean $E[Z]=\bar{Z}$ and a variance ,$\sigma_{Z}^2$,then for and

Proof: Let $Y=(Z-\bar{Z})^2$. Then E[Y]=$\sigma_{Z}^2$ and for any $y>0$

#### Chernoff bound
For any $z>0$ and any $r>0$ such that the moment generating function 


#### Galois
1. Sometimes proof by image is more intuitively, and simply
2. The most important thing is inequality and CDF function, you need to get used
   to them.
3. Treat $E$ as an linear operator, this idea is awesome, $D$ is also a
   operator, but not linear.
4. Every subject has its theory, like in physics, the theory is $F=ma$,this is
   the theory part. 
5. CDF function play a very very important role in this subject.
6. Sampling distribution, what does this mean ?  figure it out !!!!!!!

#### Reference
1. [expectation and variance](https://revisionmaths.com/advanced-level-maths-revision/statistics/expectation-and-variance)
2. [mean and variance of sample
   mean](https://newonlinecourses.science.psu.edu/stat414/node/167/)
3. [expectation and variance](https://www.stat.auckland.ac.nz/~fewster/325/notes/ch3.pdf)

