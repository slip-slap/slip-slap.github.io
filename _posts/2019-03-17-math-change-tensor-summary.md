---
layout: post
title: "Tensor: Summary"
keywords: [ ""]
description: ""
category: "math"
tags: ["change","Tensor","summary"]
---
{% include JB/setup %}

#### Introduction
If you understand tensors, you can get a lot insight in geometry; If you
understand geometry, you can understand geometry more easily.

<img src="{{IMAGE_PATH}}/math-change-tensor-summary.png" />

#### Why we have tensors?
The answer is to unify the function, unify space.
1. Functions in nature is a map, but what kind of up, how to define this map?
2. According to tensor theory, it can be consists of two building blocks, vector
   and covector, and covector is just a special vector whose image is real
   number.


3. After you learn tensor staff, and now you look back into what you have
   learned, for example, differention operation, integration operation, in
   nature they are covectors, because they give you the numbers, just real
   numbers, a very special space. You  look back at the matrix transformation,
   and they just vectors.
4. And covecter is the result we want, like the volume, weight, accelaration
   speed, probability. That't the job of covectors, but we need vector to do
   some transformation, space transformation.


#### Revolution of Notation
When you check the history of math, it is also the history of how to rewrite our
express.
1. first we write an expression like $$x^2+2xy+y^2$$
2. we can rewrite the exression in the matrix way.
3. we can rewrite matrix in a kronecker way.
we can decide what kind of notation system we take, but essiential it change
nothing, just the expression form.

#### How to denote a map
$$
\begin{array}{l}
{\Lambda: v \rightarrow w} \\
{\Lambda v \rightarrow w} \\
{\Lambda (v) \rightarrow w} \\
{\langle\Lambda, v\rangle \rightarrow w} \\
{\langle,\Lambda,\rangle} \\
\end{array}
$$

<br />
$$
\langle\Lambda, q v+b p\rangle= q\langle\Lambda, v\rangle+ b\langle\Lambda,
p\rangle
$$

#### Galois
1. If some notation is too complicate to understand, we can just break them
   down, for example the addition marker.
2. what's the point of tensor notation ? the point is create a new fancy way to
   rewrite the expression, that's all the point.


