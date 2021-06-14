---
layout: post
title: "R.G.: Connections"
keywords: [""]
description: ""
category: "math"
tags: ["space","R.G."]
---

#### Directional derivative of tensor field
we formulate a wish list of properties what the $$\nabla_{X}$$ acting on a tensor field should have.

#### Remark: Operation on tensor fields
1. Suppose T is a (p,q) tensor field, S is a (r,s) tensor field.
2. The $$T\bigotimes S$$ operation means tensor product.
3. $$T\bigotimes S (\omega,\cdots,x,\cdots) = T(\omega,\cdots,x,\cdots) \cdot S(\cdots,\cdots)$$


#### Background 
Let S be an n-dimensional manifold. If S is an open subset of $$R^{n}$$, then by defining the tangent vector of a curve $$\gamma$$,
tangent space $$T_{p}M$$, at each point may be considered equivalent to $$R^{n}$$. This means that for p and q not equal, there is
still a natural correspondence between $$T_{p}M \text { and } T_{q}M$$. Hence to consider relationships between $$T_{p}M \text {and} T_{q}M$$, we must
somehow augment the structure of S as a manifold. **Affine Connections** are such a structural augemtation.

#### Remark
1. **Affine Connections** also named as **linear connection**, **covariant derivative**.
2. $$\nabla_{X}$$ is the extension of X.
3. $$\nabla$$ is the extension of d.

#### Definition: Connection
A connection $$\nabla$$ on a smooth manifold $$(M,O,\mathscr{A})$$ is a map takes a pair of consisting of 
a vector(field) X and a (p,q)-tensor field T and sends them to a (p,q)-tensor field$$\nabla_{X}^{T}$$.  <br />
A manifold with connection is a quadruple of structure $$(M,O,\mathscr{A},\nabla)$$

#### Terminology 1: connection coefficients
Connections coefficients of the affine connection with respect to the coordiante system $$[\xi^{i}]$$

#### Galois
1. How does *covariant* work with derivative?
- The term *covariant* usually refers to Riemann's requirement that this
  derivative be independent of the choice of local coordinates, and hence
  change covariantly with respect to changes in coordinates.
- In nature, it is derivative.

2. Covariant derivative derives from directional derivative.
-  $$ \nabla_{\vec{w}} \vec{v} $$
- where $\vec{v}$ replaces a function, which extend the space form one-dimensional to n-dimensional.
- The direction vector $\vec{w}$ still refers to the direction vector.
- In nature, this is a differentiable expression, so what's the domain?
- The domain here is not vector $\vec{w}$, it is the point along some curve on the mainfold.

3. If we think of $$ \nabla_{\vec{w}} \vec{v} $$ as a representation of covariant derivative on a manifold.
- $\vec{v}$ refers to a line on the manifold.
- $\vec{w}$ refers to the vector field.
$$
\nabla_{\frac{\partial}{\partial u^{i}}}(\vec{v})=
\left(\frac{\partial v^{k}}{\partial u^{i}}+v^{j} \Gamma_{i j}^{k}\right) \overrightarrow{e_{k}}
$$
- here $\frac{\partial}{\partial u^{i}}$ refers to the basis vector of tangent line at some point along a curve.
- $\vec{e_k}$ and $\frac{\partial}{\partial u^{i}}$ are at the same tangent plane at the same point.



#### Reference
1. [covariant derivative](https://en.wikipedia.org/wiki/Covariant_derivative)
 
