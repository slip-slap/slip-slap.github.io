---
layout: post
title: "Manifold: SVD"
keywords: []
description: ""
category: "Simplex"
tags: ["manifold"]
---
{% include JB/setup %}


#### 1. Terminology
1. user-item matrix: 

<img src="{{IMAGE_PATH}}/ai-manifold-svd-user-item-matrix.png" height="" width="" />


#### Singular Value Decomposition(SVD)  
SVD means decomposition matrix transformation into three parts, which includes rotation, elongation, and projection.

1. diagonal matrix: elongation
2. orthogonal matrix: rotation



#### 3. Galois
1. We know a matrix can be factorized by smaller dimensional matrix.
2. Here the user-item matrix is very sparse, most of the entries are unkown,
   because evey a movie favourite may only see some of them.
3. So we can't get factorized matrix directy, we have to learn it.


#### 4. Reference
1. [Recommendation System I](https://www.cnblogs.com/bjwu/p/9358777.html)
2. [Recomentdation System II](https://medium.com/@m_n_malaeb/singular-value-decomposition-svd-in-recommender-systems-for-non-math-statistics-programming-4a622de653e9)

