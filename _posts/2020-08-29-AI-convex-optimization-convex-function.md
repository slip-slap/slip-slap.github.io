---
layout: post
title: "C.O.: Convex Functions"
keywords: []
description: ""
category: "AI" 
tags: ["C.O."]
---
{% include JB/setup %}


#### Indicator function
1. Indicator function of a convex set. Let $ C \subseteq \mathbf{R}^{n} $ be a
   convex set, and consider the function $\mathbf{I_C}$ with domain C and
   $I_C(x) = 0$ for all $x \in C$.
- It's extended-value extension is given by

\begin{equation}
\tilde{I}_{C}(x)=\left\{\begin{array}{ll}0 & x \in C \\ \infty & x \notin
C\end{array}\right.
\end{equation}
