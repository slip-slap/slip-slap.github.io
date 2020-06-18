---
layout: post
title: "ML: Support Vector Machine"
keywords: [""]
description: ""
category: "AI"
tags: ["supervised" ]
---
{% include JB/setup %}


#### Introduction
$$
\begin{array}{l}{\vec{w} \cdot \vec{u} \geq c} \\ {\vec{w} \cdot \vec{u}+b
\geqslant 0}\end{array}
$$ <br />
where $c=-b$
1. For the equation above, we don't know use which $\vec{w}$ and b
2. but our object is to maximize the distance

The KKT conditions are:

$$
\begin{aligned} \alpha_{i}=0 & \Rightarrow y^{(i)}\left(w^{T} x^{(i)}+b\right) \geq 1 \\ \alpha_{i}=C & \Rightarrow y^{(i)}\left(w^{T} x^{(i)}+b\right) \leq 1 \\ 0<\alpha_{i}<C & \Rightarrow y^{(i)}\left(w^{T} x^{(i)}+b\right)=1 \end{aligned}
$$


#### Galois
1. we want to draw a line in the plane to separate two class, there are so many
   method to draw a line,

#### Reference
1. [KKT](http://www.csc.kth.se/utbildning/kth/kurser/DD3364/Lectures/KKT.pdf)

