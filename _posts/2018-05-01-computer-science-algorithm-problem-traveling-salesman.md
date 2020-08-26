---
layout: post
title: "A.P.: Traveling Salesman"
keywords: []
description: 
category: "CS"
tags: ["Algorithm","A.P."]
---
{% include JB/setup %}

#### Dynamic Programming Solutiong(Top to down)

$$
g(i, s)=\min _{k \in S}\left\{c_{i k}+g(k, s-\{k\})\right\}
$$

#### 2. Recursive Tree 
<img
src="{{IMAGE_PATH}}/computer-science-algorithm-problem-traveling-salesman.png">

#### 3. Recursive Table

$$
\begin{array}{l}g(2, \phi)=5 \\ g(3, \phi)=6 \\ g(4,\phi)=8\end{array}
$$

$$
\begin{array}{l}g(2,\{3\})=15 \\ g(2,\{4\})=18 \\ g(3,\{2\})=18 \\ g(3,\{4\})=20
\\ g(4,\{2\})=13 \\ g(4,\{3\})=15\end{array}
$$

$$
\begin{array}{l}
g(2,\{3,4\})=25 \\ 
g(3,\{2,4\})=25 \\ 
g(4,\{2,3\})=23 \\
g(1,\{2,3,4\})=35 \\
\end{array}
$$



