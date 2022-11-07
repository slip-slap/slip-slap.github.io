---
layout: post
title: "R.A.: Fourier Transformation"
keywords: []
description: ""
category: "math"
tags: ["change","R.A."]
---
{% include JB/setup %}

<img src="{{IMAGE_PATH}}/math-change-real-analysis-fourier.png">

#### 1. Inspiration 
a circle in different coordinate systems
1. Cartesian Coordinate System can represents a cirlce, Polar Coordinate System can represents a circle. 
2. what's the difference ? It's just the same thing display in two different coordinate systems, and polar coordinate can bring calculation convience.
3. This relationship suits the Fourier Transformation


#### 2. Transformation

$$
\hat{f}(\xi)=\int_{\infty}^{\infty} f(x) e^{-2 \pi i x \xi} d x
$$

- $\hat{f}$ denotes the fourier transform of $f(x)$
- $\xi$ denotes frequency
- this whole crap is written in complex language

1. After read this equation, you get more confused, how come $i$ comes in here?
2. $e^{-2 \pi i \xi} = cos(-2 \pi  \xi)+ i sin(-2 \pi  \xi) $
- the left-hand side is more concise

#### 3. 2-dimensional fourier transformation
1. For me, it's painful to understand the 2-dimensional fourier transformation
   because it is kind of abstract for me.
- First, in one dimensional fourier transformation, we go along x-axis, but in
  two dimensional fourier transformation, it is easy to get lost. 
- Second, the fourier expansion involves two variables, x and y. and this is
  obvious because the target function f(x,y) involves two variables, of course
  every component should involves two variables. I know, I know, it's obvious,
  but I didn't get that first.
- Third, the two levels integration. In one dimensional fourier transformation,
  we integrate along the x-axis under the target function f(x). In two
  dimensional fourier transformation, we integrate along the area under the
  f(x,y) function.
quite simple,right?






#### 3. Galois
1. Taylor expansion just use a special family of functions which are **polynomial
   function** to represent any transcental function.
2. Fourier also use a special family of function which are **sin and cos
   function** to represent any transcental function.
3. Mathematican write formula in different language, in real number language, in
   matrix language, in complex language.


#### 4. Reference
1. [Laplace Transformation](https://www.matongxue.com/madocs/723.html)
2. [Youtube Laplace Transformation](https://www.youtube.com/watch?v=n2y7n6jw5d0)
3. [Fourier Transformation](https://www.youtube.com/watch?v=7ssUImv8e4w)
4. [fourier tutorital](https://betterexplained.com/articles/an-interactive-guide-to-the-fourier-transform/)