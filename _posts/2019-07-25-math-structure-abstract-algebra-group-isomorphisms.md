---
layout: post
title: "A.A.: Isomorphism"
keywords: []
description: ""
category: "math"
tags: ["構造","A.A."]
---
{% include JB/setup %}

#### Definition
1. Let $ (G, *) \text { and }(H, \circ) $ be two groups. A $\textbf{homomorphism}$ 
f, from G to H,is a map of sets  $ f: G \rightarrow H $, such that $f(x *
y)=f(x)\circ f(y)$ $ \forall x, y \in G $. If $G=H$ and $f=Id_{G}$ we call $f$
the identity homomorphism.

- Intuitively one should think about a homomorphism as a map of sets which
  preserves the underlying group structure. It's the same idea as a linear map
  between vector spaces.
- A homomorphism $f: G\rightarrow H$ which is bijective is called an
  isomorphism. Two groups are said to be isomorphic if there exists an
  isomorphism between them. Intuitively two groups being isomorphic means that
  are the "same" group with relabelled elements.
- A homomorphism from a group to itself $f: G \rightarrow G$ is called an
  endomorphism. An endomorphism which is also an isomorphism is called an
  automorphism.

