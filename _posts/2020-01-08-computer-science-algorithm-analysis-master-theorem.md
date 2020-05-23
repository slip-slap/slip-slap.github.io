---
layout: post
title: "AA: Master Theorem"
keywords: []
description: ""
category: "CS"
tags: ["Algorithm","AA"]
---
{% include JB/setup %}


$$
T(n)=a T\left(\frac{n}{b}\right)+f(n)
$$


$$
\begin{array}{l}T(n)=T(n-1)+1-O(n) \\ T(n)=T(n-1)+n-O\left(n^{2}\right) \\
T(n)=T(n-1)+\log n-O(n \log n) \\ T(n)=2 T(n-1)+1-O\left(2^{n}\right) \\ T(n)=3
T(n-1)+1-O\left(3^{n}\right)\end{array}
$$


#### 
1. recursive tree
- for any recursive problem, just draw the recursive tree, 
