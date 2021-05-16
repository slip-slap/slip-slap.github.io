---
layout: post
title: "P.M.: Introduction"
keywords: []
description: 
category: "math"
tags: ["apply","P.A.S.","P.M."]
---
{% include JB/setup %}


#### Sample space
1. Definition: A sample space is any set that lists all possible outcomes(or, responses) of
some unknown experiment or situation.
- The *outcomes* refer to the distinct experiments outcomes.
- Once an experiment is well-defined, The collection of all outcomes is called the **Sample space**.
- We note a sample space with $\Omega$.

2. Event Definition: In the case of a finite sample space, every subset of the
   sample space is called an event.
- A subset containint exactly one element is called an elementary event.


#### 2. Random Variable
1. random variable: defined by a function that associates with each outcome in
   $\Omega$ a value.
- We will usually use uppercase roman letters X,Y,Z to denote random variables,
  use a lowercase letter to refer to a value of a random variable.
- We use Val(X) to denote the set of values that a random variable X can take.
- For example, **Grade** is defined by a function $f_{Grade}$ that maps each
  person in $\Omega$ to his or her grade(say, one of A,B,or C)
- The event $Grade=A$ is a shorthand for the event${\omega \in \Omega: f_{Grade}(\omega)=A}$

Although I use this term **random variable** for a pretty long time, Actually, I
have no interpretation of this crap at all.


#### 1. Probability model
**A probability model** consists of a nonempty set called the sample space
$\Omega$; a collection of events $\mathcal{F}$ that are subsets of $\Omega$;
and a probability measure $\mathbf{P}$ assigning a probability between 0 and 1
to each event.  $ (\Omega, \mathcal{F}, \mathbf{P}) $

2. **Probability Measure**: usually written P. This probability measure must
   assign, to each event A, a probability P(A).
3. $A^c$: if A is any event, we write $A^c$(read "A complement") for the event
   that A does not occur.
   $$
   P(A^c)=1-P(A)
   $$

- The second component of a probability model is a class of events, which can be
  considered for now simply as the class of all subsets of the sample space.

##### 1.1 Remark
We must familiar with some terms, such as sample point, is same as outcome.



##### 2.1 Remark
As with any function, there is often confusion between the function itself,
which is called X in the definition above, and the value $X(\omega)$ the
function takes on for a sample point $\omega$.
- This is particularly prevalent with random variables(rv's) since we
  intuitively associate a rv with its sample value when an experiment is performed.
- We try to control that confusion here by using $X, X(\omega), $ and $x$,
  respectively, to refer to the rv, the sample value taken for a given sample
  point $\omega$, and a generic sample value.





#### terminology
1. statistic: a statistics or sample statistic is any quantity computed from
   values in a sample, often mean. Technically speaking, a statistic can be
   calculated by applying any mathematical function to the values found in a
   sample of data.
2. Marginal Likelihood: in statistics, a marginal likelihood function or
   integrated likelihood, is a likelood in which some parameter variables have
   been marginalized. In the context of Bayesian statictics, it may also be
   referred to as the evidence or model evidence.

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


