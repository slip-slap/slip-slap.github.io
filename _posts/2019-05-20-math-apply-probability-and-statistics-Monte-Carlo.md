---
layout: post
title: "P.A.S.: Monte Carlo"
keywords: ["Monte Carlo", "MC"]
description: ""
category: "math"
tags: ["apply"]
---
{% include JB/setup %}

#### what is the crap Monte Carlo(MC) ? 
Monte Carlo sampling the area of a curve is usually done by throwing darts at the graph of
your function and determining whether or not you landed under the curve. Divide the number of
hits by the the number of darts, and you get an approximation of the area.

+ orgin: The term "Monte Carlo" named after the famous Mediterranean casino.
+ definition: Monte Carlo(MC) refers to a class of statistics methods which use random numbers
+ core: the core of any MC method is sampling


#### Application

##### Integral
$$
I=\int_{0}^{1} \cos \left(x^{2}\right) \sin \left(x^{4}\right) d x
$$
1. This integral cannot easily be solved exactly. But it can be approximately
   computed using a Monte Carlo approximation.
2. $I=E(cos(U^2)sin(U^4))$ where $$
U \sim \text { Uniform }[0,1]
$$





















### reference 
[Monte Carlo Technique paper](https://www.ias.ac.in/article/fulltext/reso/019/08/0713-0739)




