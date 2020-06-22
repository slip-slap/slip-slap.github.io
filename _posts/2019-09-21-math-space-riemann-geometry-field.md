---
layout: post
title: "R.G.: Field"
keywords: [""]
description: ""
category: "math"
tags: ["space","R.G."]
---
{% include JB/setup %}


##### Question: So how to define fields ?
and the answer is theory of bundles.

#### Definition 1: Bundles 
A bundle is a triple consists of three pieces of
data. <br /> $$(E,\Pi,M)$$ <br /> where E is a smooth manifold, also under the
name "total space"; $$\Pi$$ is a smooth map(surjectile), also under the name of
"projection map"; M is a smooth manifold,also under the name "base space".

#### Definition 2: Fiber
$$(E,\Pi,M)$$ is a bundle, p is a point of the base space, we define the fiber
over p is the preimage of {p}. 

#### Definition 3: Section 

##### Remark
A fiber over a point, the fiber would consist of all the tangent vector just at
a point. <br /> **The section are the fields**, more precisely, "the section
correspond to the vector field"  what type of field depends on the fiber. <br />
1. what would be a covector field, it would be a section in the cotangent
   bundle, where you construct the fibers from the cotangent spaces.
2. what's a tensor field, over the base space, you construct the fibers,  



#### Example
E: cylinder M: circle 

#### Definition 2: Tangent Bundle
$$TM:= \bigcup\limits_{p\in M}^{\cdot}T_{p}M$$ <br />
Then the definition of the Tangent Bundle is in the following: <br />
$$\Pi : TM \rightarrow M$$ <br />
$$X \mapsto p$$ <br />
the unique point $$p \in M$$, and $$X \in T_{p}M$$

#### Definition 3: Vector Field
A smooth vector field is a smooth map:<br />
$$\pi : TM \rightarrow M$$ <br />
and vector field is the map:
$$vector field : M \rightarrow TM$$ <br />
<br />
<br />
<img src="{{IMAGE_PATH}}/riemann-geometry-field.png">

<br />

#### Definition 4:$$C^{\infty}(M)-module \Gamma (TM)$$ A vector space over a
ring is called a module, and module doesn't have all the properties vector space
have.  

#### Definition 4: Tensor Field
1. Given a bundle $$TM$$, $$\Gamma (TM)$$ : the set of vector field
2. Construct a cotangent bundle $$T^{\ast}M$$, $$\Gamma (T^{\ast}M)$$ : the set
   of covector field
3. you can scale covector field by function
4. then you get two $$C^{\infty}(M)$$-module
5. $$TM$$ and $$T^{\ast}M$$ are the building blocks for to understand every
   tensor field


$$ T: \underbrace{\Gamma (T^{\ast}M) \times \cdots \times \Gamma
(T^{\ast}M)}_{r} \times \underbrace{\Gamma (TM) \times \cdots \times \Gamma
(TM)}_{s} \rightarrow  C^{\infty} (M) $$ <br />


#### remark
Professor is so funny, imaging is dangerous, maybe you image something different
from me. ahaahaaha.... <br />
