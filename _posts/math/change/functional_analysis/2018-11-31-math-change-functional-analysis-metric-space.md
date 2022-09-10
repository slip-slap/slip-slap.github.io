---
layout: post
title: "F.A.: Metric Space"
keywords: [ ""]
description: ""
category: "math"
tags: ["change","F.A."]
---
{% include JB/setup %}


#### Metric Space
Metric Space: a metric space is a set together with a metric on the set, The metric is a function that defines a concept of distance between
any two members of the set. <br />
A metric space is an ordered pair(M,d), where M is a set and d is a metric on M. <br />

$$
d : M \times M \rightarrow \mathbb{R}
$$

1. The distance from a point to itself is zero
2. the distance between two distinct point is positive
3. the ditance from A to B is the same as the distance from B to A
4. the distance from A to B directly is less than or equal to the distance from A to B via any third point C.



#### complete metric space
complete metric space: A complete metric space is a metric space in which every Cauchy sequence is convergent. <br />
cauchy sequence: is a sequence whose elements become arbitrarily close to each other as the sequence progresses. More precisely, given any small
positive distance, all but a finite number of elements of the sequence are less than that given distance from each other. <br />

According to the definition, 
1. the structure of the sequence decides whether sequence is a Cauchy sequence.
2. the factor decide whether the sequence is convergent depends on the property of the space.

#### separable metric space
A topological space is called separable if it contains a countable, dense subset. <br />
Example: real number set is separable metric space.
1. It contains rational number set, rational is dense in R.
2. Q is countable.

#### Example
The Rational Number Space Q is  incomplete, There is cauchy sequence, and it's limit is not Q <br />
1 1.4 1.41 1.414 1.4141 .... <br />
But Real Number is a complete metric space.<br />
Q can be embeded in R, and R is complete.


