---
layout: post
title: "P.G.M.: Undirected Graphical Models Representation"
keywords: [""] 
description: ""
category: "math"
tags: ["apply"]
---
{% include JB/setup %}

#### Motivation
#### Concept 
1. factor: Let D be a set of random variables. We define a factor $\phi$ to be a
function from $Val(D)$ to $\mathcal{R}$. A factor is nonnegative if all its
entries are nonnegative. The set of variables D is called the scope of the
factor and denoted $Scope[\phi]$
2. Factor Product:  Let X, Y, and Z be three disjoint sets of variables, and let $\phi_1 (X,Y)$,$\phi_2 (Y,Z)$ be
two factors. We define the factor product $\phi_1 \times \phi_2$ to be a factor
$\psi : Val(X,Y,Z) \mapsto \mathcal{R}$ as follows: <br />
$\psi (X,Y,Z)=\phi_1 (X,Y)\cdot \phi_2 (Y,Z)$ <br />
3. Gibbs Distributions: A distribution $P_{\Phi}$ is a Gibbs distribution
   parameterized by as set of factors 
   $$
   \Phi=\left\{\phi_{1}\left(\boldsymbol{D}_{1}\right), \ldots,
   \phi_{K}\left(\boldsymbol{D}_{K}\right)\right\}
   $$ if it is defined as follows: <br />
   $$
   P_{\Phi}\left(X_{1}, \ldots, X_{n}\right)=\frac{1}{Z}
   \tilde{P}_{\Phi}\left(X_{1}, \ldots, X_{n}\right)
   $$ <br />
   where <br />
   $$
   \tilde{P}_{\Phi}\left(X_{1}, \ldots, X_{n}\right)=\phi_{1}\left(D_{1}\right)
   \times \phi_{2}\left(D_{2}\right) \times \cdots \times
   \phi_{m}\left(D_{m}\right)
   $$ <br />
   is an unnormalized measure and <br />
   $$
   Z=\sum_{X_{1}, \ldots, X_{n}} \tilde{P}_{\Phi}\left(X_{1}, \ldots,
   X_{n}\right)
   $$
 
<img
src="{{IMAGE_PATH}}/math-apply-probabilistic-graphical-models-representation-undirected-graphical-models.png">

- the term **clique** is from graph theory, a clique is a complete graph.

#### Parameterization
1. The parameterization of Markov networks is not as intuitive as that of
   Bayesian networks, since the factors do not correspond either to
   probabilities or to conditional probabilities.

#### Concept
1. Markov Network Factorization: we say that a distribution $P_{\phi}$ with 
$\Phi = \{ \phi_1 (D_1),\cdots,\phi_K (D_K)\}$ factorizes over a Markov network $\mathcal{H}$
if each $D_k (k=1,\cdots,K)$ is a complete subgraph of $\mathcal{H}$



