---
layout: post
title: "R.G.: Chart"
keywords: [""]
description: ""
category: "math"
tags: ["space","R.G."]
---
{% include JB/setup %}


#### Background

1. There are so many topological spaces that mathematicians can not to classify them, such as Hausdorff space, compact space.
2. For spacetime phyisics, we may focus on topological space (M,O) that can be charted, analogously to how the surface of the
earth is charted in an altas.
3. this special topological spaces is called topological manifolds.
<br />
Def: A topological space (M,O) is called a d-dimensional topological manifold if  

##### Terminology
1. chart: according to Merriam-Webster, chat is a map of an area. <br />

$$(u,x)$$ is a chart, where u is an open set, and x is a one-to-one map.
2. $$(u,x)$$ is  chart of (M,O)
3. altas, the collection of charts
4. coordinate maps: just a kind of chart if
$$x^{1} \rightarrow R$$ <br />
$$x^{...} \rightarrow R$$  and    $$x: u \rightarrow R^{d}$$ <br />
$$x^{d} \rightarrow R$$ <br />
5. Chart transition maps



#### Terminology: Coordinates and Global Coordinate
1. A manifold S is a set with a coordinate system. Since S is a set, it has elements. It does not matter what these elements are,
these elements are called **point** of S. S must also have a **coordinate system**. By this we mean a one-to-one mapping from
from S to $$R^{n}$$. which allows us to specify each point in S using a vector of n real numbers. this vector is called the 
**coordiates** of the corresponding point. We call the natural number n the dimension of S, and write n=dim S
2. we call a coordinate system that has S as its domain **a global coordinate system**

#### Terminology: Coordinate Transformation
<img src="{{IMAGE_PATH}}/riemann-geometry-coordiate-transform.png"  />


#### Remark
1. The chart is so different from the real world, we need to get the relationship between the chart and the real world.
2. To consider S as a manifold means that one is interested in investigating those properties of S which are invariant under coordinate transformations.
In particular, differential geometry analyzes the geometry of objects  using defferential operators with respect to a variety of functions on S, and it
would be problematic if these operators depended fundamentally on the choice of coordinates. Hence it is necessary to restric the coordiantes systems to those
which allow smooth transformations between each other.
3. No matter which object we want to study, **the philosophy is based on two charts**.


##### Example
1. the surface of doughnut is a two-dimensional topoligical manifold.

#### History
Riemann Geometry origins from differential geometry, and the basic strategy of differential 
geometry is parameterization. So, so called chared just a generalization of parameterization of 
curves, surfaces.

