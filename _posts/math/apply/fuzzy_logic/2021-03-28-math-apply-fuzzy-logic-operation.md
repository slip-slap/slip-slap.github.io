---
layout: post
title: "FL: Operations"
keywords: []
description: ""
category: "AI" 
tags: ["FL"]
---
{% include JB/setup %}


### Operation on fuzzy set
#### Basic
1. Complement: $$ \bar{A} \bar A^{c} $$
- $\mu_{\bar{A}}(x)$
2. Union: $$ \bar{C}=\bar{A} \cup \bar{B} $$
3. Intersection: $$ \bar{c}=\bar{A} \cap \bar{B} $$
4. Difference: $B_1 | B_2 = B_1 \cap \bar{B_2}$

#### Advanced
1. Algebraic Sum:      $\mu_{A+B} (x)= \mu_A(x) + \mu_B(x) -\mu_A(x) \times  \mu_B(x)$
2. Algrebraic product: $\mu_{A \times B} = \mu_A(x) \times \mu_B(x)$
3. Bounded sum: $min [1, (\mu_A + \mu_B)]$
4. Bounded difference: $max [1, (\mu_A - \mu_B)]$


### Operation on relations
The operation executed on two compatible binary relation to get a single binary relation is called composition.
- Let R be a relation that relates, or maps, element from set X to set Y
- Let S be a relation that relates, or maps, element from set Y to set Z 
- A relation T, can be formed that relates the same elements in set X that contains to the same element in set Z that S contains
- Such a relation is known as composition


1. Max-min composition
2. Max-product composition

 


#### Linguistic variable


#### Fuzzy Relations
We start with crisp(non-fuzzy) relations and then generalize to fuzzy relations.
- If X and Y are two sets, then $X \times Y$ is the set of all ordered pairs
  $(x,y)$ for $x \in X$ and $y \in Y$.
- A crisp relation R between X and Y is a subset of $X \times Y$. So $R \cap X \times Y$
- $R(x,y)=1$ if and only if $x,y \in R$, That is, $R(x,y)=1$  if $(x,y)$  is in
  R and $R(x,y)=0$ for $(x,y)$ not in R.
- $R(x,y)=1$ means that x and y are related(associated) through relation R.


#### Type of fuzzy set
1. The value of membership degree might include uncertainty. If the value of
   membership function is given by a fuzzy set, it is a type-2 fuzzy set.
- Type-2 fuzzy sets allow us to handle linguistic uncertainties, which can be
  expressed as: "words can mean different things to different people."
2. This concept can be extended up to Type-n fuzzy set.

#### Fuzzy rule
A fuzzy rule can be represented by a fuzzy relation $R= A \rightarrow B$
- R can be viewed as a fuzzy set with a two dimensional membership function


1. Example, If temperature is high, then humidity is fairly high
- It is a fuzzy rule and a fuzzy relation
- To determine the membership function of the rule, Let T and H be univers of
  discourse of temperature and humidity, respectively, and let us define
  variables $t \in T$ and $h \in H$

#### Defuzzification
- In many practical applications, a control command is given as a crisp value.
- A process to get a non-fuzzy control action that best represents the
  possibility distribution of an inferred fuzzy control action.
- No systematic procedure for choosing a good defuzzification strategy.

