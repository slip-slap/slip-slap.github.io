---
layout: post
title: "P.A.S.M.: Introduction"
keywords: ["probabiltiy"]
description: ""
category: "math"
tags: ["apply"]
---
{% include JB/setup %}

#### Outline
Probability is the science of uncertainty. It provides precise mathematical
rules for understanding and analyzing our own ignorance.
The content of probability and statistics can be divided into three parts
1. Probability and Statistics Model(P.A.S.M.)
2. Probability and Statistics Model Inference(P.A.S.M.I.)
3. Probability and Statistics Model Check(P.A.S.M.C.)

#### Probability model
**A probability model** consists of a nonempty set called the sample space
**S**; a collection of events that are subsets of **S**; and a probability
measure **P** assigning a probability between 0 and 1 to each event. 

1. **Sample Space**: A sample space is any set that lists all possible outcomes(or, responses) of
   some unknown experiment or situation,
 **which is a set whose elements are called outcomes or sample points.**
2. **Probability Measure**: usually written P. This probability measure must
   assign, to each event A, a probability P(A).
3. $A^c$: if A is any event, we write $A^c$(read "A complement") for the event
   that A does not occur.
   $$
   P(A^c)=1-P(A)
   $$

- The second component of a probability model is a class of events, which can be
  considered for now simply as the class of all subsets of the sample space.

##### Remark
We must familiar with some terms, such as sample point, is same as outcome.


#### Random Variable
1. random variable: defined by a function that associates with each outcome in
   $\Omega$ a value.
- We will usually use uppercase roman letters X,Y,Z to denote random variables,
  use a lowercase letter to refer to a value of a random variable.
- We use Val(X) to denote the set of values that a random variable X can take.
- For example, **Grade** is defined by a function $f_{Grade}$ that maps each
  person in $\Omega$ to his or her grade(say, one of A,B,or C)
- The event $Grade=A$ is a shorthand for the event${\omega \in \Omega: f_{Grade}(\omega)=A}$
2. random variables: 
Complex systems are characterized by the presence of multiple interrelated
aspects, for example, in medical diagnosis application, there are multiple
possible diseases that the patient might have, hundreds of symptoms and
diagostic tests. These domains can be characterized in terms of a set of random
variables.
- random variables, just a set of random variable
- we can denote the random variables as $\mathcal{X}$, and each element which
  also a random variable denoted as $X_i$


Although I use this term **random variable** for a pretty long time, Actually, I
have no interpretation of this crap at all.

#### Marginal and Joint Distributions
1. Marginal Distribution: Once we define a random variable X, we can consider
   the distribution over events that can be described using X. This distribution
   is often referred to as the marginal distribution over the random variable
   X.We denote this distribution by P(X).
2. Joint Distribtuion:

##### Remark
I am kind of phobia of the word **marginal distribution**, I should try to
understand this term in context of talking about **joint distribution **,just
like the sides of a coin, like duality in geometry, and then I can understand
this concept better.

#### Conditional Probability
The notation $P(X|Y)$ to represent a set of conditional probability
distributions
- Intuitively, for each value of Y, this objects assigns a probability over
  values of X using the conditional probability.
- This notation allows us to write the shorthand version of the chain rule:
  $P(X,Y)=P(X)P(Y|X)$

#### Remark
The definition of conditional probability is based on **Joint Distribution**

#### Independence
We usually expect $P(\alpha|\beta)$ to be different from $P(\alpha)$. That is,
learning that $\beta$ is true changes our probability over $\alpha$, However, in
some situations equality can occur, so that <br />
$P(\alpha|\beta)=P(\alpha)$. <br />
That is, learning that $\beta$ occurs did not change our probability of $\alpha$

#### Conditional Independence
Independence is a useful property, it is not often that we encounter two
independent events. A more common situation is when two events are independent
given an additional event.
1. Conditionally Independent:  We say that an event $\alpha$ is conditionally independent of event $\beta$
   given $\gamma$ in P, denoted 







#### Independence and Conditional Independence
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



#### terminology
1. statistic: a statistics or sample statistic is any quantity computed from
   values in a sample, often mean. Technically speaking, a statistic can be
   calculated by applying any mathematical function to the values found in a
   sample of data.

#### Galois
1. For a new subject, if you want to master it. You must get used to with the
   basic concept and the notation, and what does they mean.
2. The purpose of probability theory and statistics is to study a special kind of function, random variables  why
   it is so special, because you can't evaluate the function at some specific
   point. For example, $y=x^2$, you can evaluate the value of the function at
   every x, you get an y. but for the random variable mapping  the result of tossing a dice to a real number $\{1,2,3,4,5,6\}$,
   for this very special function, the meaningful thing is to calculate the
       expectation and variance. 
3. So random process and probabilit and statistics just the subject evaluate
   expectation and variance.
4. To study geometry, we introduce calculus, and now, to study probability, we
   also need to use calculus, calculus just a tool can be used in geometry and
   probability.

#### reference
1. [statistic](https://en.wikipedia.org/wiki/Statistic)
2. [CDF](https://en.wikipedia.org/wiki/Cumulative_distribution_function)
3. [CDF and PDF](https://www.probabilitycourse.com/chapter4/4_1_3_functions_continuous_var.php)


