---
layout: post
title: "L.A.: Eigen System"
keywords: [""]
description: ""
category: "math"
tags: ["構造","L.A."]
---
{% include JB/setup %}
#### Intuitive Explaination of Matrix 
If somebody suddly comes in, and ask what does this matrix transformation do?
<br />
**Just show him the eigenvalue and eigenvector.** <br />
$$
A=\left(\begin{array}{rr}{-\frac{3}{5}} & {\frac{4}{5}} \\ {\frac{4}{5}} &
{\frac{3}{5}}\end{array}\right)
$$
This matrix just stands for the reflection in two dimensional space. So one
natural questions is what's the eigenvalue of this matrix. <br />
Thinking for a while, Because this matrix just rotation, so the absolute value
of its eigenvalue must be 1, **Amazing,Amazing,Amazing!**

#### Dilations
$T(\vec{v})=\lambda\vec{v}$
1. Dilations are a closd system, **a field**
2. Composition: $$
(T \circ R)(\vec{v}) \equiv T(R(\vec{v}))
$$
3. Addition: $$
(T+R)(\vec{v}) \equiv T(\vec{v})+R(\vec{v})
$$
#### Concept
1. Hermitian Matrix: a square matrix having the property that each pair of
   elements in the ith row and jth column and in the jth row and ith column are
   conjugate complex numbers
- The reason Hermitian is an important concept has to do with eigen values. The
  eigenvalues of a Hermitian matrix are all real.

2. Orthogonal: if its tranpose equals its inverse
3. Unitary: if its Hermitian conjugate equals inverse
4. Normal: A matrix is called normal if it commutes with its Hermitian conjugate.
- The reason that normal is an important concept has to do with the
  eigenvectors. The eigenvectors of a normal matrix with nondegenerate(i.e.,
  distinct) eigenvalues are complete and orthogonal, spanning the N-dimensional
  vector space.

#### Left and Right Eigenvectors
1. $x\cdot A=\lambda x$
- every left eigenvector is the transpose of a right eigenvector of the
  transpose of A.

#### Example
$$
\mathbf{A} \cdot \mathbf{X}_{R}=\mathbf{X}_{R} \cdot
\operatorname{diag}\left(\lambda_{1} \ldots \lambda_{N}\right) \quad
\mathbf{X}_{L} \cdot \mathbf{A}=\operatorname{diag}\left(\lambda_{1} \ldots
\lambda_{N}\right) \cdot \mathbf{X}_{L}
$$
- $X_R$ be the matrix formed by columns from the right eigenvectors
- $X_L$ be the matrix formed by columns from the left eigenvectors
- multiplying the first of these equations on the left by $X_L$, the second on
  the right by $X_R$ and substracting the two, gives
$$
\left(\mathbf{X}_{L} \cdot \mathbf{X}_{R}\right) \cdot
\operatorname{diag}\left(\lambda_{1} \ldots
\lambda_{N}\right)=\operatorname{diag}\left(\lambda_{1} \ldots
\lambda_{N}\right) \cdot\left(\mathbf{X}_{L} \cdot \mathbf{X}_{R}\right)
$$
- This says that the matrix of dot products of the left and right eigenvectors
  commutes with the diagonal matrix of eigenvalues.


#### Galois
1. Just as number system, there are prime number, rational number, integer,
   fraction, and so on. But we study rational numbers a lot, because any other
   numbers can be represents by rational number. so we just focus on a **special
   family of number system**.
2. When study functions such as, sin, cos, tan, and there are so many
   transcendal functions. But, but we just focus on polyinomial, because they
   are simple and important, and the other functions can be represent by
   polinomial functions, so we just focuse on a special **family of functions**.
3. We we study matrices, we can just study a special family of matrices, yes we
   can.**Actually, we are tring to relate any arbitrary matrices to this special
   family**

#### Reference 
1. [Eigen System](http://www.foo.be/docs-free/Numerical_Recipe_In_C/c11-0.pdf)
