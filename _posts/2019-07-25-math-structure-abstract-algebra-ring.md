---
layout: post
title: "A.A.: Ring"
keywords:  
description: 
category: "math"
tags: ["構造","A.A."]
---
{% include JB/setup %}


#### Background
1. Sets with a single binary operation satisfying certain axioms
2. We are often more interested in working with sets that have two binary
   operations
- If we consider a set with two such related binary operations satisfying
  certain axioms, we have algebraic structure called a ring.
- In a ring, we add and multiply elements such as real numbers, complex numbers,
  matrices, and functions.

#### Definition 
Ring:  A ring is a set of elements under $\times, -,+$, not commutative under $\times$
- Ring with Unity or idenity: if there is an element  $1 \in R$ such that $
1 \neq 0
$ and $1a=a1=a$ for each element $a\in R$, we say that R is a ring with unity or
identity
- Commutative ring: A ring R for which $ab=ba$ for all a,b in R is called a
  commutative ring.
- Integral domain: A commutative ring R with identity is called an integral
  domain if, for every $a,b \in R$ such that ab=0, either a=0 or b=0.

#### Ring Homomorphisms 

1. In the study of groups, a homomorphism is a map that preserves the operation of
the group. Similarly, a homomorphism between rings preserves the operations of
addition and multiplication in the ring. More specifically, if R and S are
rings, then a ring homomorphism is a map $\phi: R \rightarrow S$ satisfying
$
\begin{aligned} \phi(a+b) &=\phi(a)+\phi(b) \\ \phi(a b) &=\phi(a) \phi(b)
\end{aligned}
$

- for all $a,b \in R$. if $\phi: R \rightarrow S$ is a one-to-one and onto
  homomorphism, then $\phi$ is called an isomorphism of rings

2. Kernel: The set of elments that a ring homomorphism maps to 0 plays a
   fundamental role in the theory of rings. For any ring homomorphism 
   $\phi: R \rightarrow S$, we define the kernel of a ring homomorphism to be
   the set 

	$\text{ker} \phi =\{r\in R: \phi(r)=0\} $


#### Ideal
In group theory we found that normal subgroups play a special role. these
subgroups have nice characteristics that make them more interesting to study
than arbitrary subgroups. In ring theory the objects corresponding to normal
subgroups are a special class of subrings called ideals.

1. Ideal: an ideal in a ring r is a subring I of R such that if a is in I and r
   is in R, both ar and ra are in I; 





#### Example
1. Integer: Every Integer is a product of primes.
2. Intergers  are ring.
3. Polynomials with coefficients Every Polynimial is a product of irreducible
polynomials(instead of prime polynomials) <br />
$
x^{15}-1=(x-1)\left(x^{2}+x+1\right)\left(x^{4}+x^{3}+x^{2}+x+1\right)
\left(\begin{array}{c}{x^{8}-x^{7}+x^{5}-x^{4}}{+x^{3}-x+1}\end{array}\right)
$


#### Remark
When I begin to learn math, the operation 0 divides a number confuses me a lot. <br />
After talent French mathematician comes out group theory, everything change. In the point of view of group theory, you can treat everything you 
meet as group with additive structure. For example, real numbers under operation addition is a group, totally true.
but you want to add multiply structure to this group, It's Ok, I accept your proposal, and then give it a new name,
we call it a ring.

