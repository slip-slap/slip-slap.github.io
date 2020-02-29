---
layout: post
title: "Riemann Geometry:  Multilinear Algebra"
keywords: [""]
description: ""
category: "math"
tags: ["space"]
---
{% include JB/setup %}

##### Question 1: why we talk about multilinear algebra ?
why we talk about multilinear space, if we equip the spacetime with a vector space, what does 5\*paris mean? <br />
It means nothing. <br />
The reason why we talk about multilinear space is because the tangent spaces.

##### Question 2: why study vector space?
the benificial is following:
1. for constuction of $$T_{P}M$$, one needs an intermediate vector space 
2. tensor technique  are most easily understoodin in an abstract setting.


##### definition: vector space
a vector space is a set V with two operations, plus and times $$(V,+,-)$$  <br />
1): a set V <br />
2): +: V*V $$\rightarrow$$ V "addition" <br />
3): <br />
satifsying:
1. $$C^{+}$$
2. $$A^{+}$$
3. $$N^{+}$$
4. $$I^{+}$$
5. A:    
5. D:
5. D:
5. U:

##### vector space of Homomorphisms
if $$(V,+,\cdot)$$ and $$(W,+,\cdot)$$ are vector spaces, then we can define the set
all linear maps from one to another: <br />
$${\phi: V \rightarrow W}$$ into a bag <br />
It's actually just a set, and the set has a name, and the name is $$Hom(V,W)$$ <br />
This just **a set**, of all linear maps. <br />
Furthermore, we can make this set **Hom(V,W)** becomes a vector space by add structure<br />
such as addition and multiplication. <br />
so $$(Hom(V,W),+,\cdot)$$ is also a vector space.

#### terminology: dual vector space
dual vector space just a heavily used special case. <br />  
suppose $$(V,+,\cdot)$$ is a vector space. <br />
$$V^{\ast}:= {\phi: V \rightarrow R }$$ <br />
real numbers are also vector space, so this is just another set **Hom(V,R)**, and it is a special set<br />
V and $$V^{\ast}$$ just the most basic building blocks  to build very complicat case. It's clever to bring something down to 
its elementry building blocks, that's the only idea. <br />
$$(V^{\ast},+,\cdot)$$ define on Hom(V,R) is also a vector space. <br />
It has a speical name, it's called **dual vector space** to V.

#### Example
consider:  $$I: P \rightarrow R$$ which means $$I \in P^{\ast}$$ <br />
def $$I(p) := \int_{0}^{1}p(x)dx $$ <br />
so $$I=\int_{0}^{1}dx$$ is a covector

#### covector
element $$\phi \in V^{\ast}$$ are called covector.


#### tensor
let $$(V,+,\cdot)$$ be a vector space, An (r,s)-tensor T over V is a multilinear map: <br />

$$
T: \underbrace{V^{*} \times \cdots \times V^{*}}_{r} \times \underbrace{V \times \cdots \times V}_{s} \rightarrow \mathbf{R}
$$ <br />
That's the logic we say V and $$V^{\ast}$$ just the most basic building blocks.

So what does multilinear mean? <br />
1. T(1,1)-tensor  <br />
$$T(\phi + \omega,v) = T(\phi,v)+T(\omega,v) $$ <br />
$$T(\lambda \phi, v) = \lambda T(\phi,v)$$ <br />
$$T(\phi,v+w) = T(\phi,v)+T(\phi,w)$$ <br />
$$T( \phi, \lambda v) = \lambda T(\phi,v)$$ <br />
$$T(\phi+\omega,v+w) = T(\phi,v)+T(\phi,w)+T(\omega,v)+T(\omega,w)$$ <br />


#### Example 1: polyinomial
$$g: P \times P \rightarrow R$$ <br />
$$(p,q) \mapsto \int_{0}^{1}dxp(x)q(x)$$  <br />
is a (0,2)-tensor over P.

#### Example 2: Vectors and covectors as tensors
$$\varphi \in V^{\ast} \rightarrow \varphi: V \rightarrow R \rightarrow \varphi (0,1)-tensor$$ <br />
inner product is a (0,2)-tensor <br />
You know so many tensors, but maybe you never call them tensors.

#### Remark
$$
\epsilon^{1}, \epsilon^{2}
$$


##### remark
Compared with linear algebar on vector space, **Multilinear Algebra** is the same field, emphasis just not only look at the linear maps,
but multilinear maps. 







