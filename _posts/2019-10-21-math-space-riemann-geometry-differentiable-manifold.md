---
layout: post
title: "Riemann Geometry: Differential Manifold"
keywords: [""]
description: ""
category: "math"
tags: ["space"]
---
{% include JB/setup %}



#### Questions: why we need talk about differentiable Manifolds?
It's important to figure out what kind of structure we need to add on
topological manifold in order to start talking about differentiablity of curves
on Manifolds, about differentiblility of functions on manifolds, even about the
diff- erentiability of maps from one manifold to another manifold.

#### but how to define differential and this is the strategy
idea: try to lift the undergraduate notion of differentiability of a cuve on
$$R^{d}$$ to a notion of differentiability of a curve on M.

#### compatible charts
In previous lecture, we used any imaginable charts on the topological manifold
$$(M,O)$$. <br /> To emphasis this, we may say that we took u and v form the
**maximum atlas** of $$(M,O)$$


#### Submanifold
In mathematics, a submanifold of a manifold M is a subset $S$ which itself has
the structure of a manifold, and for which the inclusion map 

#### Theorem
For any $$C^{K>1}-atlas$$ of a topological  $$manifold (M,O,A_{c^{k>1}})$$
contains a $$C^{\infty}-atlas$$ <br /> $$C^{\infty}-manifolds$$ are called
smooth manifolds unless we with to define Taylor expandibility and complex
differentibiliay where <br />
1. The $$C^{\infty}$$ means, it would suffice for the relevant functions to be
   differentiable some appropriate number of times. Intuitively, we may consider
   $$C^{\infty}$$ to simply mean "sufficiently smooth".

#### Example
Let $$f: S \rightarrow R$$ be a function on a manifold S. Then if we select a
coordiante system $$\varphi = [\xi^{i}]$$ for S.  This function maybe rewritten
as a function of the coordinates; letting $$[\xi^{i}]$$ denote the coordinates
of the point p, we have <br /> 
$$
f(p)=\bar{f}\left(\xi^{1}, \cdots, \xi^{n}\right), \text { where } \bar{f}=f
\circ \varphi^{-1}
$$ <br />
Note that $$\bar{f}$$ is a real-valued function whose domain is $$\varphi(S)$$,
an open subset of $$R^{n}$$. <br />
When $$
\bar{f}=f \circ \varphi^{-1} \text { is } C^{\infty}
$$, in other words,$$
\bar{f}\left(\xi^{1}, \cdots, \xi^{n}\right)
$$
can be partially differentiated with respect to its variables an unbounded
number of times, we call $$f$$ a $$C^{\infty}$$ function on S. 

#### terminology
1. isomorphic: a set M and a set N are called isomorphic, **set theortically
   speaking** if there exists an bijection between them. These definition only
   on **set structure**.<br />
$$\exists M \rightarrow N$$, bijection <br />
This case is called isomorphism; these sets are called isomorphic.
2. homoporphic: two set but equipped with topology, $$(M,O_{M})$$ and
   $$(N,O_{N})$$. and now we going to define **topological isomorphic**, with a
   traditional name **homeomorphic**.  which means they are at the **set level**
   isomorphic, additionaly, not only a bijection, but also continuously, because
   continuity are structure related concept   <br /> $$\exists M \rightarrow
   N$$, bijection <br />
homeomorphic is a strong definition, compared with isomorphic.

#### word: iso- and homo-
1. the difference between \[iso-\] and \[homo-\] is the difference being
   equivalent or identical. \[iso-\] means identical, \[Homo-\] means identical.
2. There is a subtle but clear difference between equivalent and identical. For
   example, the prime mnister of the UK is equivalent of the chancellor of
   Germany. In both cases, the person holding office is the head of the
   goverment. The two are equivalent, but they are not identical.

