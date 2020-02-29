---
layout: post
title: "P.A.S.: Finites States of Markov Chain"
keywords: ["Markov Chain"] 
description: ""
category: "math"
tags: ["apply"]
---
{% include JB/setup %}

#### Definition
1. Def: A state(node) j is accessible from i(i$\rightarrow$j) if a walk exists from
i to j.
- $i\rightarrow j$ means that, starting in i, entry to j is possible, perhaps
   with multiple steps.$i \neq j$ means there is no possibility of ever reaching
   j from i.
-  If $i\rightarrow j$ and $j\rightarrow k$, then $i\rightarrow k$. (Concatenate
   a walk i to j with a walk from j to k)
2. An n-step walk is an ordered string of nodes(states), say$$
\left(i_{0}, i_{1}, \ldots i_{n}\right), n \geq 1
$$, with a directed arc from $i_{m-1}$ to $i_m$ for each ,$1\leq m \leq n$.


3. Def: States i and j communicate ($i\rightarrow j$) if $i\rightarrow j$ and $j\rightarrow i$
4. A class C of states is a non-empty set of states such that each $i\in C$
   communicates with every other $j\in C$ and communicates with no $j \notin C$.
<img
src="{{IMAGE_PATH}}/math-apply-probability-and-statistics-stochastic-process-finite-state-markov-chain.png">
- $C_1={2,3}$
- $C_2={4,5}$
- $C_3={1}$
- $C_4={6}$
- **why $C_4$ is a class?**, if I don't count this case as a class, I cannot
  partition it, because partitioning means that I should cover the whole states
  in the classes.
5. For finite-state Markov chains, a recurrent state is a state i that is
   accessible from all states that are accessible from i(i is recurrent if $i
   \rightarrow j$ implies that $j \rightarrow i$). A transient state is a state
   that is not recurrent.
- The states in a class are all recurrent or all transient.

#### Periodic States and Classes. 
The period, d(i), of state i is defined as <br />
$d(i)=gcd{n:p_{ii}^n}>0$ <br />
- if d(i)=1, i is aperiodic 
- if d(i)>1, i is periodic with period d(i)
- All states in the same class have the same period.
- State i is called aperiodic if there are two consecutive numbers s and s+1
  such that the process can be in state i at these times. 

#### Ergodic Markov Chain
Ergodic Markov Chains gradually lose their memory of where they started,
i.e,.$P_{ij}^n$ goes to a limit $\pi_j>0$ as $n \rightarrow \infty$, and this
limit does not depend on the starting state i.
A Markov Chain is called ergodic if all its states are ergodic.
- In a finite state Markov chain, a state that is recurrent and aperiodic is
  called ergodic
- we are interested in irreducible, ergodic Markov chains.

#### Unichain
1. A unichain is a finite-state Markov chain that contains a single recurrent
   class plus, perhaps, some transient states. An ergodic unichain is a unichain
   for which the recurrent class is ergodic.

#### Matrix Approach
1. Probability Vector: A probability vector is a vector$$
\vec{\pi}=\left(\pi_{1}, \dots, \pi_{\mathrm{M}}\right)
$$
for which each $\pi_i$ is nonnegative and $\sum_i{\pi_i}=1$. 
2. Steady-state Vector: A probability vector $\vec{\pi}$ is caled a steady-state
   vector for the transition matrix [P] if $\vec{\pi}=\vec{\pi}[P]$
- In matrix terms,
$$
\lim _{n \rightarrow \infty}\left[P^{n}\right]=\vec{e} \vec{\pi}
$$ 
where $\vec{e}=(1,1,\cdots,1)^T$ is a column vector, and $\vec{\pi}$ is a row
vector.



#### Theorm
Let an ergodic finite-state Markov chain have transition matrix [P]. Then for
each j, $max_iP_{ij}^n$ is nonincreasing in n,$min_iP_{ij}^n$ is nondecreasing
in n.
$$
\lim _{n \rightarrow \infty} \max _{i} P_{i j}^{n}=\lim _{n \rightarrow \infty}
\min _{i} P_{i j}^{n} \doteq \pi_{j}>0
$$ <br />
with exponential convergence in n.
##### Example
Consider the 2-state ergodic chain with $P_{12}=P_{21}=3/4$. Then
- $P_{12}^n=\frac{12}{16},\frac{6}{16},\frac{9}{16}$
- $P_{22}^n=\frac{4}{16},\frac{10}{16},\frac{7}{16}$
##### Proof
$$
\begin{array}{l}{P_{i j}^{n+1} \leq \max _{k} P_{k j}^{n}} \\ {P_{i j}^{n+1}
\geq \min _{k} P_{k j}^{n}}\end{array}
$$

#### Eigenvalue and Eigenvector
$$
\begin{array}{ll}{\pi_{1} P_{11}+\pi_{2} P_{21}=\lambda \pi_{1}} & {P_{11}
\nu_{1}+P_{12} \nu_{2}=\lambda \nu_{1}} \\ {\pi_{1} P_{12}+\pi_{2}
P_{22}=\lambda \pi_{2}} & {P_{21} \nu_{1}+P_{22} \nu_{2}=\lambda
\nu_{2}}\end{array}
$$

Accordint to $[P-\lambda I]=0$ <br />
$lambda_1=1 \quad \lambda_2=1-P_{12}-P_{21}$ <br />
Eigenvector <br />
$$
\begin{aligned} \pi_{1}^{(1)} &=\frac{P_{21}}{P_{12}+P_{21}} & \pi_{2}^{(1)}
&=\frac{P_{12}}{P_{12}+P_{21}} \\ \pi_{1}^{(2)} &=1 & \pi_{2}^{(2)} &=-1
\end{aligned}
$$ <br />
$$
\begin{array}{ll}{\nu_{1}^{(1)}=} & {1 \quad \nu_{2}^{(1)}=\quad 1} \\
{\nu_{1}^{(2)}=} & {\frac{P_{12}}{P_{12}+P_{21}} \quad \nu_{2}^{(2)}=\quad
\frac{-P_{21}}{P_{12}+P_{21}}}\end{array}
$$ <br />

$$
\left[P^{n}\right]=\left[\begin{array}{ll}{\pi_{1}+\pi_{2} \lambda_{2}^{n}} &
{\pi_{2}-\pi_{2} \lambda_{2}^{n}} \\ {\pi_{1}-\pi_{1} \lambda_{2}^{n}} &
{\pi_{2}+\pi_{1} \lambda_{2}^{n}}\end{array}\right]
$$


#### Reference
1. [Markov Chain](http://courses.washington.edu/inde411/MarkovChains(part3).pdf)
2. [MIT Finite State Markov Chains](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-262-discrete-stochastic-processes-spring-2011/course-notes/MIT6_262S11_chap03.pdf)

