---
layout: post
title: "Manifold Learning: Isomap"
keywords: ["isomap"]
description: ""
category: "AI"
tags: ["unsupervised learning" ]
---

#### Introduction
According to the name, Isomap is a nonlinear dimensionality reduction method.
It is one of several widely used low-dimensional embedding methods, it is for
computing a quasi-isometric, low-dimensional embedding of a set of
high-dimensioal data points. The algorithm provides a simple method for
estimating the **intrinsic geometry of a data manifold** on a rough estimate of
each data point's neighbors on the manifold. Isomap is highly efficient and
generally applicable to a broad range of data sources and dimensionalites.

#### ISOMAP
1. Isomap is a combination of the Floyd-Warshall algorithm with classic
Multidimensional Scaling. Classic Multimensional Scaling takes a matrix of
pair-wise distances between all points and computes a position for each point.
Isomap assumesthat the pair-wise distances are only known between neighboring
points, and uses the Floyd-Warshall algorithm to compute the pair-wise distances
between all other points. This effectively estimates the full matrix of
pair-wise geodesic distances between all of the points.
2. Landmark-Isomap is a variant of this algorithm that uses landmarks to
   increase speed, at the cost of some accuracy



#### Reference
1. [ISOMAP](https://en.wikipedia.org/wiki/Nonlinear_dimensionality_reduction#Locally-linear_embedding)


