---
layout: post
title: "Riemann Geometry: Connections"
keywords: [""]
description: ""
category: "math"
tags: ["space"]
---
{% include JB/setup %}

#### A
According to the knowledge before, we saw a vector field X can be used to provide a directional derivative of a function $$f \in C^{\infty} M$$ <br />
$$\nabla_{x}f:= Xf$$

$$\nabla_{x}f= Xf = (df)X$$ <br />
1. $$X: C^{\infty} \rightarrow C^{\infty}(M)$$
2. $$df: \Gamma (TM) \rightarrow C^{\infty}(M)$$
3. $$\nabla_{X}: C^{\infty} \rightarrow C^{\infty}(M)$$


#### Directional derivative of tensor field
we formulate a wish list of properties what the $$\nabla_{X}$$ acting on a tensor field should have.

#### Question 1: what does $$\nabla_{X}Y$$ mean ?
1. Both of X and Y are vector fields.
2. $$\Gamma_{im}^{q}$$
3. 
$$
p \mapsto\left(d x^{i}\left(\nabla_{\frac{\partial}{\partial x^{k}}}^{\frac{\partial}{\partial x^{j}}}\right)\right)(p)
$$

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

#### Terminology 2: Riemannian connction
 
