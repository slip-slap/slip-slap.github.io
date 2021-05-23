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


#### Regular Expressions
1. $\Phi$(the empty set) is a regular language and denotes the empty set
2. $\epsilon$ is a regular expression. It denotes the set of languages containing only the empty
   string: $\{\epsilon\}$
3. The $\Phi$ and $\epsilon$ are not the same. The empty set is a regular language that does not
   accept any strings, including strings of length zero. If a regular language is denoted by
   $\{\epsilon\}$, then it accepts exactly one string, the string of length zero. This latter
   regular language accepts something, the former does not.

