---
layout: post
title: "R.G.: Concept"
keywords: [""]
description: ""
category: "math"
tags: ["space","R.G."]
---
{% include JB/setup %}


#### Introduction
Elliptic geometry is a non-Euclidean geometry with positive curvature which replaces the parallel po
stulate. Elliptic geometry is sometimes also called Riemannian geometry.


#### guideline.
we add so many structure to the set, such as topology, chart, riemannian
metrics, connection, and so on. for study purpose.
1. set: set is the foundation of modern math, so we start with set.
2. topology: in order to give set a structure, we define topology, we obtain
   topology space.
3. chart: in oder to study domain and image, we define chart, we obatain
   manifold.
4. tangent vectors and coverctors: in order to study differentiability, we
   define, we obatain smooth manifold
5. riemannian metrics: in order to measure the length of vector, we add a
   structure that enables us to do just that to our smooth manifold.
6. connection: in order to compare different tangent vectors from different
   tangent spaces of nearby points, we add conncetion structure.


#### Galois 
1. manifold is a space, not a shape. 流形不是一个"形状"，而是一个"空间"。
2. There are geometry property on a 2-sphere, it's so different from Euclidean
   Geometry, you can't put a coordinate on the surface, It's a Geometry space,
   you can't put coordinate on it.  But you can study the surface with
   coordinates, just as Gauss does. Riemann just generalize this idea, and
   create Riemann Geometry.
   
2. For a long time, I was so confused with Riemann geometry, what's this, what
   can we do with this.
3. In fact, when Riemann given his presentation to the guys the first time, only
   Gauss understand what does Riemman mean, why because gauss is teacher of
   Riemann, Riemann leann the concept of parametrize from Gauss, and generalize
   this concept.
4. When I try to understand Riemann Geometry, I always want to put this crap
   into a coordinate, Descartes coordiates or three-dimensional coordinates.
   This is a **so so so so so big mistake**, Enstein want to get rid of
   coordinates, But I want to get coordinates back, It's so embarassing.
5. Actually, there is no such a concept called coordinate in Riemann Geometry,
   but you can deal with these geometry with coordinates.
6. I have learn so many geometry, Affine geometry, projective geometry,
   Euclidean Geometry. Geometry is geometry, geometry just is geometry.
   coordiate just a tool to deal with geometry problem. Don't turn things upside
   down.
6. That's why before you learn Riemann Geometry, you need to learn Differential
   Geometry, because Riemann is inspired by Gauss, and Gauss make a big
   contribution to differential geometry. Riemann just based on Gauss's method
   and create Riemann Geometry.
6. All of a sudden, you understand what does Riemann Geometry mean, what does
   Riemann want to say. Just as Group theory, you understand what does Galois
   want to say. There is no word to express how happy I am ! Math is
   beautiful,realy beautiful.
7. Thank you, Riemann, Galois for bring so beautiful thing to the world.



#### Why Riemann Geometry ?

1. the idea of riemann surface is to be able to do complex analysis on a surface

#### Riemann Manifold
1. A manifold with an inner product defined in the tangent space at each point.
2. Allows us to measure angles at a point
3. define the length of curves
4. define "geodesic distance" on the manifold
5. find curves of shortest distance

#### Riemannian Metric
Suppose for every point x in a manifold M, an inner produce \<a,b\>x, is defined on a tangent space $$T_{x} M$$  of M at x. <br />
The collection of all these inner products is called Riemannian metrix.

#### geodesic
1. a locally distance-minimizing curve. The curve can be broken up into sections $$[a_{i},b_{i}]$$, so that $$\gamma$$ is the shortest curve from
$$\gamma (a_{i})$$ to $$\gamma (b_{i})$$
2. A curve on a surface whose acceleration is always normal to the surface





#### concept
1. covariant vector:
2. contravariant vector:
3. we can distinguish the variables for the "co-variant" components from variables for the "contra-variant" components
by using subscripts instead of superscripts for the index values


#### Structure 1: Topology
Question 1: So, why define topology ? <br />
In order to define continutity of maps. <br />
<br />

Question 1: So, what is topology ? <br />
everyone knows the 2-dimensional space and 3-dimensional space pretty well, but how to define a space to different from
a set. mathematicians give this structure a name, we call it topology. 

Question 2: so whether a map is continuous ? <br />
Whether a map f: M $$\rightarrow$$ N is continuous depends on which topologies are chosen on M and N. <br />
Definition: <br />
let $$(M, O_{M})$$ and $$(N,O_{N})$$ are topological spaces, Then a map f: M $$\rightarrow$$ N is called continuous
($$O_{M} and O_{N}$$) <br />
A map is continuous if and only if the preimage of all open sets are open sets. <br />



1. spacetime is a set
2. The basic object of study is topological spaces, which are equipped with a topology.

#### Teminology
1. M denotes set
2. O denotes topology := set of open sets
3. (M,O) denotes topological space 


#### 7. Connections
whatever we did so far, the underlying set, topology, topological manifold, smooth manifold, all of these are structure you need to provide by hand 
before you start doing physics. <br />
In this lecture, add a another structure on smooth manifolds, so called connections, also go under the name **covariant derivative**.
There are slight difference between connections and covariant derivative, but for geometry information, there is no need to talk about
the difference.

#### terminology
1. diffeomorphism: diffeomporphism is an isomorphism of smooth manifolds. It is an invertible function that maps one differentiable manifold 
to another that both the function and its inverse are smooth.
2. isomorphism: a homomorphism is an isomorphism if and only if it is bijective.

#### definition
Given two manifolds M and N, a differential map $$f: M \rightarrow N$$ is called a diffeomorphism if it is bijection and its inverse
$$f^{-1}: N \rightarrow M$$ is differentiable as well. If these functions are r times continuously differentiable, f is called a **$$C^{r}-diffeomorphism$$**

#### teminology
Riemannian manifold: smooth manifold M equipped with an inner product $$g_{p}$$ on the tangent space $$T_{p}M$$ at each point p.

#### reference
1. [黎曼空间](https://baike.baidu.com/item/%E9%BB%8E%E6%9B%BC%E7%A9%BA%E9%97%B4)
2. [Riemannian manifold](https://en.wikipedia.org/wiki/Riemannian_manifold)




