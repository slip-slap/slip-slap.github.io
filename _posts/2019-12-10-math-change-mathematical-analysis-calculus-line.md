---
layout: post
title: "Calculus Line"
keywords: [ ""]
description: ""
category: "math"
tags: ["change"]
---
{% include JB/setup %}

#### Line integral of a scalar field
For some scalar field 
$$
f: \mathbb{U} \subseteq \mathbb{R}^{n} \rightarrow \mathbb{R}
$$
the line integral along a piecewise smooth curve $$
c \subset \mathbb{U}
$$ is defined as

$$
\int_{\mathcal{C}} f(\mathbf{r}) d s=\int_{a}^{b}
f(\mathbf{r}(t))\left|\mathbf{r}^{\prime}(t)\right| d t
$$

<img src="{{IMAGE_PATH}}/math-change-calculus-line-scalar-field.gif" />

##### Remark
A line integral of a scalar field is thus a line integral of a vector field
where the vectors are always tangential to the line.



#### Remark
For a long time, I was so confused by the concept of field, what the crap is a
field. All of a sudden, I understand, I was so happy, it is just a map, we call
this a field just to generalize this phenomean.



#### Reference
1. [wikipedia line integral](https://en.wikipedia.org/wiki/Line_integral)



