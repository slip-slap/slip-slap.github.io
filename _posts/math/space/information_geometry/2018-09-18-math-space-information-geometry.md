---
layout: post
title: "I.G.: Introduction"
keywords: []
description: ""
category: "math"
tags: ["space","I.G."]
---
{% include JB/setup %}

#### background
View the set of probability distributions which constitute a **statistical model as a manifold**,  
and analyzing the relationship between the geometric structure of this manifold and statistical 
estimation using this model.

#### terminology 1: statictical model S
$$
S=\left\{p_{\xi}=p(x ; \xi) | \xi=\left[\xi^{1}, \cdots, \xi^{n}\right] \in \Xi\right\}
$$ <br />
where $$\Xi$$ is a subset of $$R^{n}$$ and the mapping 
$$
\xi \mapsto p_{\xi}
$$
is injective. <br />
we call such S an n-dimensional **statistical model**, a **parametric model**
also use expression such as **$$p_{\xi}(x)=p(x;\xi)$$** and **$$S={p(x;\xi)}$$**


#### terminology 2: Fisher information matrix
$$
g_{i j}(\xi) \stackrel{\text { def }}{=} E_{\xi}\left[\partial_{i} \ell_{\xi} \partial_{j} 
\ell_{\xi}\right]=\int \partial_{i} \ell(x ; \xi) \partial_{j} \ell(x ; \xi) p(x ; \xi) d x
$$ <br />

where 
$$
\partial_{i} \stackrel{\text { def }}{=} \frac{\partial}{\partial \xi^{i}}
$$ <br />
$$
\ell_{\xi}(x)=\ell(x ; \xi)=\log p(x ; \xi)
$$ <br />

#### terminology 3: $$\alpha$$-connection
$$
\left(\Gamma_{i j, k}^{(\alpha)}\right)_{\xi} \stackrel{\text { def }}{=} E_{\xi}\left[\left(
\partial_{i} \partial_{j} \ell_{\xi}+\frac{1-\alpha}{2} \partial_{i} \ell_{\xi} \partial_{j} 
\ell_{\xi}\right)\left(\partial_{k} \ell_{\xi}\right)\right]
$$


#### application
1. in the field of neurocomputing, a set of neural networks forms a neuro-manifold.
Information geometry has become one of fundamental methods for analyzing neruocomputing
and related areas.



