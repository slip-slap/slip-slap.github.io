---
layout: post
title: "A.P.: Sum of Subsets"
keywords: []
description: 
category: "CS"
tags: ["A.P.","Algorithm"]
---
{% include JB/setup %}


####
1. draw the state tree
2. the trick is how to redefine 

$$
\begin{array}{l}\cdot \sum_{i=1}^{k} \omega_{i} x_{i}+\omega_{k+1} \leqslant m
\\ \sum_{i=1}^{k} \omega_{i} x_{1}+\sum_{i=k+1}^{n} \omega_{i}> m \end{array}
$$

<img src="{{IMAGE_PATH}}/computer-science-algorithm-problem-sum-of-subset.png">


#### Galois
1. Don't be nervous, make use of knowledge you have, it's just another tree
   recursive problem


