---
layout: post
title: "R.A.: Calculus Line"
keywords: [ ""]
description: ""
category: "math"
tags: ["change","R.A."]
---
{% include JB/setup %}

#### 1. Line integral of a scalar field
For some scalar field 
$
f: \mathbb{U} \subseteq \mathbb{R}^{n} \rightarrow \mathbb{R}
$
the line integral along a piecewise smooth curve 
$c \subset \mathbb{U} $
$ is defined as

$
\int_{\mathcal{C}} f(\mathbf{r}) d s=\int_{a}^{b}
f(\mathbf{r}(t))\left|\mathbf{r}^{\prime}(t)\right| d t
$

<img src="{{IMAGE_PATH}}/math-change-calculus-line-scalar-field.gif" />

##### 1.1 Remark
- A line integral of a scalar field is thus a line integral of a vector field
where the vectors are always tangential to the line.
- This above formula is from wikipedia, but other than the intimidating formula,
  you got nothing.
- The video is good


#### 2. My version

<img src="{{IMAGE_PATH}}/math-change-real-analysis-calculus-line-image.png"
width="300" />

- parametrize the line $l$ with parameter $t: x(t), y(t)$
- $ds = \sqrt{d^2x + d^2y }$
- $ds = \sqrt{x\prime(t)d^2t + y\prime (t)d^2t }$





#### Remark
For a long time, I was so confused by the concept of field, what the crap is a
field. All of a sudden, I understand, I was so happy, it is just a map, we call
this a field just to generalize this phenomean.

#### Galois
1. scalar field, vector field, in this context, the word field is counterpart of
   ring.
2. Here we use a techique called parameterize the curve with a one-dimensional
   paramter.
- you can see this trick in complex analysis to simulate the integral curve
- in lie group and lie algebra, we also need a parametrize integral curve to
  walk through all the matrix.
- Just as here a line through the surface.






#### Reference
1. [wikipedia line integral](https://en.wikipedia.org/wiki/Line_integral)
2. [video line integral](https://www.khanacademy.org/math/multivariable-calculus/integrating-multivariable-functions/line-integrals/v/introduction-to-the-line-integral)



