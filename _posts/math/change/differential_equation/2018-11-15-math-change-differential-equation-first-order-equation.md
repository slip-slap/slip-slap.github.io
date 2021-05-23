---
layout: post
title: "ODE: First order equation"
keywords: [ "PDE"]
description: ""
category: "math"
tags: ["change"]
---
{% include JB/setup %}

#### Motivation
$
	\frac{dy}{dt} = ay + q(t)
$

##### Why this equation takes this form? What does each item meaning for? 
1. The derivative is the rate of change of y, as times goes forward, are partly depending on the solution itself.
- That's the idea of differential equation.
- It connect the changes with the function y as it is.
- and then you have $q(t)$ which produces their own change. They go into the system, and the become part of the y.
- and they grow, decay, oscillate, whatever y of t does.

2. You can think of y as money in the bank,  growing, decaying, oscillating.


#### Second order equation

$
	my^{\prime \prime} + by^{\prime} + ky = f(t)
$

1. In Newton's law, the force is the multiplicaton of mass and acceraltion, that's why we have the first item.
2. $by^{\prime}$ could be some damping. If I have motion, there are some friction slowing it down. That depends on the first derivation, it's verlociy.
3. $ky$ refers some force term.
4. $f(t)$ some outside force injecting into the system, some person or machine creating the movement.

