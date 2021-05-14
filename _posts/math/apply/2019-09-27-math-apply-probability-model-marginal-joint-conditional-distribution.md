---
layout: post
title: "P.M.: Joint, Marginal and  Conditional Distribution"
keywords: [""] 
description: ""
category: "math"
tags: ["apply","P.A.S.","P.M."]
---
{% include JB/setup %}

#### 1. Marginal and Joint Distributions
1. Marginal Distribution: Once we define a random variable X, we can consider
   the distribution over events that can be described using X. This distribution
   is often referred to as the marginal distribution over the random variable
   X.We denote this distribution by P(X).
2. Joint Distribtuion:

##### 1.1 Remark
I am kind of phobia of the word **marginal distribution**, I should try to
understand this term in context of talking about **joint distribution **,just
like the sides of a coin, like duality in geometry, and then I can understand
this concept better.


#### 2 Conditional Probability
The notation $P(X|Y)$ to represent a set of conditional probability
distributions
- Intuitively, for each value of Y, this objects assigns a probability over
  values of X using the conditional probability.
- This notation allows us to write the shorthand version of the chain rule:
  $P(X,Y)=P(X)P(Y|X)$

##### 2.1  Remark
The definition of conditional probability is based on **Joint Distribution**

#### 3. Independence
We usually expect $P(\alpha|\beta)$ to be different from $P(\alpha)$. That is,
learning that $\beta$ is true changes our probability over $\alpha$, However, in
some situations equality can occur, so that <br />
$P(\alpha|\beta)=P(\alpha)$. <br />
That is, learning that $\beta$ occurs did not change our probability of $\alpha$

##### 3.1 Conditional Independence
Independence is a useful property, it is not often that we encounter two
independent events. A more common situation is when two events are independent
given an additional event.
1. Conditionally Independent:  We say that an event $\alpha$ is conditionally independent of event $\beta$
   given $\gamma$ in P, denoted 


##### 3.2 Independence and Conditional Independence
we usually expect $P(\alpha | \beta)$ to be different from P(\alpha). That is,
learning that $\beta$ is true changes our probability over $\alpha$. However, in
some situations equality can occur, so that $P(\alpha|\beta)=P(\alpha)$. That
is, learing that $\beta$ occurs did not chang our probability of $\alpha$. <br />

##### Definition 1:
A distribution P satisfies$(\alpha \perp \beta)$ if and only if 
$$
P(\alpha \cap \beta)=P(\alpha) P(\beta)
$$

#### Why Independence and Conditional Independence are so Important ?
1. we can always write the following formula, no matter they are independent or
   not. <br />
 $P(x,y| \mathcal{H})=P(x|y,\mathcal{H})p(y|\mathcal{H})$
2. if they are independent, it can be denoted in the following way <br />
 $P(x,y| \mathcal{H})=P(x|\mathcal{H})p(y|\mathcal{H})$
- Maybe because we have just two random variables,you can't realize how
  important they are.
#### Notation
1. PMF: If X has only a finite or countable number of possible sample values,
   say $x_1,x_2,\cdots$, the probability $Pr\{X=x_i\}$ of each sample values
   $x_i$ is called the probability mass function(PMF) at $x_i$ and denoted by
   $p_X(x_i)$; such a random variable is called discrete
2. Probability Density: If the distribution function $F_X(x)$ of a rv X has a
   derivative at x, the derivative is called the probability density of X at x
   and denoted by $f_X(x)$
##### Remark
Probability Mass function and probability density function are defined based on
cumulative distribution function.

#### 4. Reference
1. [beta 分布-马同学](https://www.matongxue.com/madocs/910/)
2. [beta distribution-wikipedia](https://en.wikipedia.org/wiki/Beta_distribution)
