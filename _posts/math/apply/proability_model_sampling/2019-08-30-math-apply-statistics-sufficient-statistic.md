---
layout: post
title: "Statistics: sufficient statistic"
keywords: ["probabiltiy"]
description: ""
category: "math"
tags: ["apply","P.A.S.","statistics"]
---
{% include JB/setup %}

#### Idea
In statistics, a statistic is sufficient with respect to a statistical model and
its assoiated unknown parameter if "no other statistic that can be calculated
from the same sample provides any additional information as to the the value of
the parameter."




**Fisher-Neyman Factorization theorem**: If the density(or probability function) for a model
factoer as $f_X(x)=h(x)g(\theta, T(x))$, then T is a sufficient statistic.
- The density $f$ can be factored into a product such that one factor, $h$, does
  not depend on $\theta$ and the other, which does depend on $x$ only through
  $T(x)$
- It is easy to see that if $F(t)$ is a one-to-one function and $T$ is a
  sufficient statistic, then $F(T)$ is a sufficient statistic. In particular we
  can multiply a sufficient statistic by a nonzero constant and get another
  sufficient statistic.


**The Rao-Blackwell Theorem**: A statistic $U$ is sufficient for a model if and
only if the conditional distribution of the data $s$ given $U=\mu$ is the same
for every $\theta \in \Omega$.



#### Galois
1. We define sufficient statistics, but how could we identify them? this is
   where the *factorization theorem* comes to play.

