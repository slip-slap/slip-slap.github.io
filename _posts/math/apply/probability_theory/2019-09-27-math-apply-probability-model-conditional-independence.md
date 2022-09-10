---
layout: post
title: "P.M.: Conditional Independence"
keywords: [""] 
description: ""
category: "math"
tags: ["apply","P.A.S.","P.M."]
---
{% include JB/setup %}

#### 1. Motivation 
We usually expect $P(\alpha|\beta)$ to be different from $P(\alpha)$. That is,
learning that $\beta$ is true changes our probability over $\alpha$, However, in
some situations equality can occur, so that <br />
$P(\alpha|\beta)=P(\alpha)$. <br />
That is, learning that $\beta$ occurs did not change our probability of $\alpha$

##### 3.1 Conditional Independence: what is independent of what?
Independence is a useful property, it is not often that we encounter two
independent events. A more common situation is when two events are independent
given an additional event.
1. Conditionally Independent:  We say that an event $\alpha$ is conditionally independent of event $\beta$
   given $\gamma$ in P, denoted 
2. The initial intuition for conditional probability comes from considering
   probabilities that are ratios. In the case of ratios, **P(E|F)**, as defined
   above, is the fraction of items in **F** that are also in **E**.


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

#### Galois
1. What does the intuitive behind conditional independence? It's relationship,
   which is the essence all mathematics about, the only thing that we care. It
   means the connection of the world.
2. We also give a way to check this relationship by $ P(\alpha \cap
   \beta)=P(\alpha) P(\beta) $. From intuitive to a strict mathematical object,
   that's the beauty of mathematics.


#### 4. Reference
1. [beta 分布-马同学](https://www.matongxue.com/madocs/910/)
2. [beta distribution-wikipedia](https://en.wikipedia.org/wiki/Beta_distribution)
