---
layout: post
title: "ODE: Introduction"
keywords: [ "PDE"]
description: ""
category: "math"
tags: ["change"]
---
{% include JB/setup %}

#### Why
"Since Newton, mankind has come to realize that the laws of physics are always expressed in the language of differential equations." -Stenven Strogatz


#### Example 1

Suppose an object begins to move at the speed $v_0$, it subjects to
gravitational force, calculate its trajectory.

1. step one: $\frac{d^2y}{dt} = -g$
2. step two: $\frac{dy}{dt} = -gt+v_0$
3. final: $y = -0.5gt^2 + v_0t$

#### Example 2: pendulum
1. Accerlate: $a = \frac{d^2y}{x} = -gsin(\theta)$
2. $x=$
3. $a = L\theta  = -gsin(\theta)$
4. add air resistance: $\frac{d^2\theta}{t} = -\mu \frac{d\theta}{dt} - \frac{g}{L}sin(\theta (t)) $




#### Reference
1. [3blue1 Differential Equations](https://www.youtube.com/watch?v=p_di4Zn4wz4)



