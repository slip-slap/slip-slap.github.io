---
layout: post
title: "Linear Algebra: Positive Define"
keywords: [""]
description: ""
category: "math"
tags: ["structure"]
---
{% include JB/setup %}
#### Definition
1. Positive Define: a symmetric $n\times n$ real matrix M is said to be positive
   definite if the scalar $z^T Mz$ is strictly positive for every nonzero column
   z of n real numbers.
2. Indefinite: A matrix that is not positive semi-definite and not negative
   semidefinite is called indefinite.
3. Positive Semi-define: the scalars $z^T Mz$ or $z^{\aster} Mz$ must jbe
   positive or zero. **Negative Definite and Negative Semi-define** are defined
   analogously.

#### what is intuitive explanation of a positive semidefine matrix
One intuition definition as follows. Multiply any vector with a positive
semi-definite matrix.  The angle between the  original vector and the resultant
vector will always be less or equal $$\pi/2$$ The positive define matrix tries
to keep the vector within a certain half space containing the vector.  This is
analoous to what a positive number does to a real number.  Multiply it and it
only stretches or contracts but never reflects it about the origin

#### Galois
1. In Lie Group and Lie Algebra, special matrix is studied. For example, the
   volume preserving matrix, **Positive Define Matrix** can be treated as a
   special kind of matrix.
2. Why we are so interested in this kind of matrix, because it can use to
   calculate inner product in high dimensional space, which **means distance**.


#### Reference
1. [semidefine matrix](https://math.stackexchange.com/questions/9758/intuitive-explanation-of-a-positive-semidefinite-matrix)
