---
layout: post
title: "TOC: Regular Languages"
keywords: []
description: 
category: "CS" 
tags: ["TOC"]
---
{% include JB/setup %}

#### A
1. A language is said to be a regular language if and only if some finite state machine recognizes
   it.
- languages which require memory are not recognized by FSM


#### Operation
1. Union:  \begin{equation}
A \cup B=\{x \mid x \in A \text { or } x \in B\}
\end{equation}
2. Concatenation: \begin{equation}
A \circ B=\{x y \mid x \in A \text { and } y \in B\}
\end{equation}
3. Star: \begin{equation}
A^{*}=\left\{x_{1} x_{2} x_{3} \ldots . . x_{k} \mid k \geqslant 0 \text { and } \operatorname{each}
x_{i} \in A\right\}
\end{equation}
