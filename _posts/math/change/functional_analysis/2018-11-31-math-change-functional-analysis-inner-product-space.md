---
layout: post
title: "F.A.: Inner Product Space"
keywords: [ ""]
description: ""
category: "math"
tags: ["change","F.A."]
---
{% include JB/setup %}


#### Definition
An inner product space is a vector space with an additional structure called an
inner product. This additional structure associates each pair of vectors in the
space with a scalar quantity known as inner product.
- For a very very very long time, I was suffered about the definition of inner
  product, Oh my god, **it's just a structure**. And it catch the essential
  properties of angle, length, and distance.

#### Properties
1. An inner product space is a vector space V over the field F together.
- $$
\langle\cdot, \cdot\rangle: V \times V \rightarrow F
$$

- As you can tell, here, we generalize the definiton of a function, and also the
  notation also changed in a more general way.

1. Conjugte symmetry 
$$
\langle x, y\rangle=\overline{\langle y, x\rangle}
$$

2. Linearity
$$
\begin{aligned}\langle a x, y\rangle &=a\langle x, y\rangle \\\langle x+y,
z\rangle &=\langle x, z\rangle+\langle y, z\rangle \end{aligned}
$$

3. positive define
$$
\langle x, x\rangle>0, \quad x \in V \backslash\{\mathbf{0}\}
$$

In Euclidean Gemometry, the dot product of the Cartesian Coordinates is a
algebraic operaton that takes two equal-length sequence of numbers and returns a
single numer

#### formula

The dot product of two vector $$
\mathrm{a}=\left[a_{1}, a_{2}, \ldots, a_{n}\right]
$$ and $$
\mathbf{b}=\left[b_{1}, b_{2}, \dots, b_{n}\right]
$$

$$
\mathbf{a} \cdot \mathbf{b}=\sum_{i=1}^{n} a_{i} b_{i}=a_{1} b_{1}+a_{2} b_{2}+\cdots+a_{n} b_{n}
$$

#### Galois
1. When I was a child, I use a ruler to get the length of the target.
2. When I was in junior school, I use coordiate to calculate the length.
3. When I was in hign school, I use vector to calculate the length.
4. When I was a undergraduate, I still use vector to calculate the length
5. When I was graduate, I still use vector to calculate the length
6. When I was a doctor, I learn Functional Analysis, inner product is
   introduced, just to calculate the length.


#### Reference
1. [Inner Product Space](https://en.wikipedia.org/wiki/Inner_product_space)


