---
layout: post
title: "C.O.: Terminology"
keywords: []
description: ""
category: "math" 
tags: ["C.O.","apply"]
---
{% include JB/setup %}


#### Problem
1. min $f_0(x)$
2. subject to $f_i(x) \leq b_i$, $i=1,\cdots, m$

- $x=(x_1, \cdots, x_n)$: optimization variables
- $f_0: R^n \rightarrow R$: objective function
- $f_0: R^n \rightarrow n, i=1,\cdots, m$: constraint functions 




#### Terminology
1. Line segement between $x_1$ and $x_2$: all points $x = \theta x_1 + (1-\theta) x_2$ with $0 \leq \theta \leq 1$
2. convex set: contains line segment between any two points in the set
$x_1,x_2 \in C, 0\leq \theta \leq 1$:  $\theta x_1 + (1-\theta) x_2 \in C$
3. convex combination of $x_1, \cdots, x_k$: any point x of the form 

$x = \theta_1 x_1 +\theta_2 x_2 + \cdots + \theta_k x_k  $ with $\theta_1+\cdots+\theta_k = 1$, $\theta_i \geq 0$

4. convex hull conv S: set of all convex combinations of points in S

5. conic (nonnegative) combination of $x_1$ and $x_2$: any point of the form
$x = \theta_1 x_1 + \theta_2 x_2$ with $\theta_1 \geq 0, \theta_2 \geq 0$

6. convex cone: set that contains all conic combinations of points in the set.

7. hyperplane: set of the form $\{ x| a^Tx = b \}$, $a!= 0$
8. halfspace: set of the form $\{ x| a^Tx \leq b \}$, $a!=0$


#### Therom
Supporting hyperplane theorem: if C is convex, then there exists a supporting hyperplane at
every boundary point of C.


#### Definition
1. $f: R^n \rightarrow R$ is convex if $dom f$ is a convex set and 

$f(\theta x + (1-\theta)y) \leq \theta f(x) + (1-\theta)f(y)$ 



1. Optimal solution: $x^*$ has smallest value of $f_0$ among all vectors that satisfy the constraints






