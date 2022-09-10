---
layout: post
title: "A.A.: Prime Group"
keywords: []
description: ""
category: "math"
tags: ["構造","A.A."]
---
{% include JB/setup %}

#### Definition
We can express any finite abelian group as a finite direct product of cyclic
groups. More specifically, letting  $p$ be prime, we define a group G to be
$p-group$ if every element in G has its order a power of p
- For example, both $\mathbf{Z}_2$ and $\mathbf{Z}_2$ and $\mathbf{Z}_4$ are
  2-groups, where $\mathbf{Z}_{27}$ is a 3-group.
- Every finite abelian group is isomorphic to a direct product of cyclic
  p-groups




#### Repeated squares

##### Example
$271^{321} (mod 481) = 271^{2^0 + 2^6 + 2^8} (mod 481) = 271^{2^0} \times 271^{2^6} \times 271 ^ {2^8} $ 


1. $271^{2^1}=73,441=329 (mod 481)$

2. $$ 
	\begin{aligned} 
		271^{321} & \equiv 271^{2^{0}+2^{6}+2^{8}} \quad(\bmod 481) \\
		& \equiv 271^{2^{0}} \cdot 271^{2^{6}} \cdot 271^{2^{8}} \quad(\bmod  481) \\
		& \equiv 271 \cdot 419 \cdot 16 \quad(\bmod 481) \\ 
		& \equiv 1,816,784 \quad(\bmod 481) \\ & \equiv 47 \quad(\bmod 481) 
	\end{aligned} 
	$$

