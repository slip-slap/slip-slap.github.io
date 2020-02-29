---
layout: post
title: "I.T.: Ising Models"
keywords: [""]
description: ""
category: "math"
tags: ["apply"]
---
{% include JB/setup %}
#### Ising 
1. $$
E(\mathrm{x} ; J, H)=-\left[\frac{1}{2} \sum_{m, n} J_{m n} x_{m} x_{n}+\sum_{n}
H x_{n}\right]
$$
- The coupling between neighbouring spins is J. we define $J_{mn}=J$ if m and n
  are neighbours and $J_{mn}=0$ otherwise.
- H is the applied field
- We have included the factor of $\frac{1}{2}$, because each pair is counted
  twice in the first sum, once as (m,n) and once as (n,m)
2. The probability that the state is x is: <br />
$$
P(\mathrm{x} | \beta, J, H)=\frac{1}{Z(\beta, J, H)} \exp [-\beta E(\mathrm{x} ;
J, H)]
$$
- $$
Z(\beta, J, H) \equiv \sum_{\mathbf{x}} \exp [-\beta E(\mathbf{x} ; J, H)]
$$


#### Reference
1. [Ising Models](http://wiki.swarma.net/index.php/ISING%E6%A8%A1%E5%9E%8B)
