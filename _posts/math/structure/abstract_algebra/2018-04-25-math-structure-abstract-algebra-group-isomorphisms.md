---
layout: post
title: "A.A.: Isomorphism"
keywords: []
description: ""
category: "math"
tags: ["構造","A.A."]
---
{% include JB/setup %}


#### Philosophy
1. In linear algebra the predominant objects we study are the maps between
   vector spaces, and not the vector space themselves.  The structure preserving
   maps between vector spaces are more interesting than the spaces themselves.
2. This is a deep observation and it is true far beyond the confines of linear
   algebra. 
3. Philosophically it's saying that an object in isolation is uninteresting;
   it's how it relates to what's around it that matters.
4. The world of group theory is no different. Here the objects are groups and
   the maps between them are homomorphisms.

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

<img src="{{IMAGE_PATH}}/math-structure-abstract-algebra-group-isomorphism.png" />

#### Galois
1. Isomorphism is the most important properties that we want to study, because
   it means group classification.

