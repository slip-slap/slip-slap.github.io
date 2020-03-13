---
layout: post
title: "L.A.: Application in Polynomial Space"
keywords: [""]
description: ""
category: "math"
tags: ["structure","L.A."]
---
{% include JB/setup %}
#### Introduction
Polynomial Spaces are excellent examples of linear spaces, the space of
polynomials of degree three or less forms a linear or vector space which we call
$P^3$. 

#### Isomorphism
Def: A linear(vector) space W is a space with addition and scalar multiplication
which is isomorphic to $V^n$ for some n. <br />
**Why we say they are isomorphic**, because both of them have the properties of
addition and scalar multiplication.  <br />
$$
\varphi: P^{3} \rightarrow V^{4}
$$
<img
src="{{IMAGE_PATH}}/math-structure-linear-algebra-application-polynomial-relation-between-algebra-and-polynomial.png" />
#### Translation
1. The coefficients of translate by -c involve derivatives.
2. Here  there is a very important point of view, **Don't treat the polynomial as
   a function, It's just just just  polynomial!!!!!!**
\begin{array}{l}{a_{0}+a_{1} \alpha+a_{2} \alpha^{2}+a_{3} \alpha^{3}
\rightarrow a_{0}+a_{1}(\alpha+c)+a_{2}(\alpha+c)^{2}+a_{3}(\alpha+c)^{3}} \\
{=\left(a_{0}+a_{1} c+a_{2} c^{2}+a_{3} c^{3}\right)+\left(a_{1}+2 a_{2} c+3
a_{3} c^{2}\right) \alpha} \\ {+\left(a_{2}+3 a_{3} c\right)
\alpha^{2}+\left(a_{3}\right) \alpha^{3}}\end{array}


$$
\begin{aligned} a_{0}+a_{1} c+a_{2} c^{2}+a_{3} c^{3} &=p(c) \\ a_{1}+2 a_{2}
c+3 a_{3} c^{2} &=p^{\prime}(c) \\ a_{2}+3 a_{3} c &=p^{\prime \prime}(c) / 2 !
\\ a_{3} &=p^{\prime \prime \prime}(c) / 3 ! \end{aligned}
$$

The derviative of the polynomial 
$$
p \equiv a_{0}+a_{1} \alpha+a_{2} \alpha^{2}+\dots+a_{n} \alpha^{n}
$$ <br />
is the polynomial <br />
$$
p^{\prime}=D(p) \equiv a_{1}+2 a_{2} \alpha+3 a_{3} \alpha^{2}+\dots+n a_{n}
\alpha^{n-1}
$$

Theorem: if $p=a_0+a_1\alpha+a_2\alpha^2+a_3\alpha^3$ then
$$
p(\alpha+c)=p(c)+p^{\prime}(c) \alpha+\frac{p^{\prime \prime}(c)}{2 !}
\alpha^{2}+\frac{p^{\prime \prime \prime}(c)}{3 !} \alpha^{3}
$$

##### Proof: $(pq)\prime=p\prime q+q\prime p$
$$
(pq)(\alpha+c)=p(\alpha +c)q(\alpha +c)$$

#### Bases of Polynomial Spaces
Lagrange Polynomials, Berstein Polynomials,Chebyshev Polynomials, Spread
Polynomials.
1. Power Basis or Standard basis.  $B=[1,\alpha,\alpha^2,\alpha^3]$
$D(1)=0, D(\alpha)=1, D(\alpha^2)=2\alpha,D(\alpha^3)=3\alpha^2$ <br />
$D(a_0,a_1\alpha+a_2\alpha^2+a_2\alpha^3)=a_1+2a_2\alpha+3a_3\alpha^2$ <br />
$$
(D(p))_{B}=\left(\begin{array}{llll}{0} & {1} & {0} & {0} \\ {0} & {0} & {2} &
{0} \\ {0} & {0} & {0} & {3} \\ {0} & {0} & {0} & {0}\end{array}\right)(p)_{B}
$$ <br />

2. Factorial Basis

$$
F=\left[1, \alpha, \frac{\alpha^{2}}{2 !}, \frac{\alpha^{3}}{3 !}\right]
$$ <br />
$$
(D(p))_{F}=\left(\begin{array}{llll}{0} & {1} & {0} & {0} \\ {0} & {0} & {1} &
{0} \\ {0} & {0} & {0} & {1} \\ {0} & {0} & {0} & {0}\end{array}\right)(p)_{F}
$$

3. Taylor Basis
$B_3=[1,\alpha-3,(\alpha-3)^2,(\alpha-3)^3]$

4. Bernstein Polynomials: The n+1 Bernstein polynomials of degree n $[b_{0,n},b_{1,n},
\cdots,b_{n,n}]$ form a basis of $P^n$ <br />
$$
\begin{array}{c}{1 \\
1-\alpha \quad \alpha} \\ 
{(1-\alpha)^{2} \text{ } 2(1-\alpha)\alpha \text{ }
\alpha^{2}} \\ {(1-\alpha)^{3} \quad 3(1-\alpha)^{2} \alpha \quad 3(1-\alpha)
\alpha^{2} \quad \alpha^{3}} \\
{(1-\alpha)^{4} \quad  4(1-\alpha)^{3} \alpha \quad
6(1-\alpha)^{2} \alpha^{2} \quad 4(1-\alpha) \alpha^{3} \quad
\alpha^{4}}\end{array}
$$

<img
src="{{IMAGE_PATH}}/math-structure-linear-algebra-application-polynomial-bernstein-polynomial-space.png" />


5. Chebyshev Polynomials: Chebyshev Polynomials are useful in approximations and
   integration theories.
$$
\begin{array}{l}{T_{0}=1} \\ {T_{1}=\alpha} \\ {T_{2}=2 \alpha^{2}-1} \\
{T_{3}=4 \alpha^{3}-3 \alpha} \\ {T_{4}=8 \alpha^{4}-8 \alpha^{2}+1} \\
{T_{5}=16 \alpha^{5}-20 \alpha^{3}+5 \alpha}\end{array}
$$
$T_{n+1}=2\alpha T_n-T_{n-1}$

6. Spread Polynomials
#### Galois
1. polynomial space and vector space are isomorphic, I know, I know, but, there
   are still something that not so intuitive, what's that confuse me.
2. The reason is you treat a vector like
$$
\left(\begin{array}{l}{a} \\ {b} \\
{c}\end{array}\right)
$$
as a comination of three basic vectors, 
$$
\left(\begin{array}{l}{1} \\ {0} \\
{0}\end{array}\right)
$$,
$$
\left(\begin{array}{l}{0} \\ {1} \\
{0}\end{array}\right)
$$
and 
$$
\left(\begin{array}{l}{0} \\ {0} \\
{1}\end{array}\right)
$$, but I have some difficulties to understand $p_0=a_0+a_1\alpha+a_2\alpha^2$ 
is isomporphic to
$$
\left(\begin{array}{l}{a_0} \\ {a_1} \\
{a_2}\end{array}\right)
$$, actually, just treat $\alpha^0,\alpha^1,\alpha^2$ as 
$$
\left(\begin{array}{l}{1} \\ {0} \\
{0}\end{array}\right)
$$,
$$
\left(\begin{array}{l}{0} \\ {1} \\
{0}\end{array}\right)
$$
and 
$$
\left(\begin{array}{l}{0} \\ {0} \\
{1}\end{array}\right)
$$
3. Mayba you have studied calculus for many years, but you don't understand it.
