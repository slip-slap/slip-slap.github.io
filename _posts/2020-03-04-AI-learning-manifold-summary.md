---
layout: post
title: "Manifold Learning: summary"
keywords: []
description: 
category: "AI"
tags: ["learning","summary" ]
---


#### Introduction
1. during the Manifold learning process, all the data are treated in a **potenial manifold space**.


流形学习(manifold learning) 综述, csdn
AIRM (Affine Invariant Riemannian Metric)仿射不变黎曼测度


#### Galois
In general, manifold learning is just trying to find another method to display
data in lower dimensional space, there are so many ways to complete this. <br />
1. Just keep the euclidean distance in lower dimensional space (ISOMAP)
2. keep Euclidean distance and linear points properties (LLE)
3. Keep Euclidean distance, linear points and the geometry properties (LE) in
   lower dimensional space.
4. Assume the map, has some properties, such as Laplacian  transformation, so
   this is Laplacian Eigenmaps
5. Assume the map has second derivative properties, such as Hessian value, so
   this is Hessian Eigenmaps

#### Reference
1. [简述多种降维算法](http://chenrudan.github.io/blog/2016/04/01/dimensionalityreduction.html)
2. [流形学习综述](https://blog.csdn.net/zz_1215/article/details/39481437?t=1466602174114)

