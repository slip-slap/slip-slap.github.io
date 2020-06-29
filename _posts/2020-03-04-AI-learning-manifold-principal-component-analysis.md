---
layout: post
title: "Manifold Learning: Principal Component Analysis "
keywords: []
description: ""
category: "AI"
tags: ["manifold" ]
---

{% include JB/setup %}

#### what is the crap[1]
+ for simplicity, you just want to display your data with another orthonormal basis.
+ for the data in the following table, the default orthonormal basis is 
   [1,0,0],[0,1,0], and [0,0,1]. but you want to express the data with another orthonormal basis.
+ but you have some condition, you want the value along one of new basis varies most.
+ how could you do that ?
+ suppose you want maximize the value of price and size along some axis varies most
+ suppose X1 denotes price variable, X2 denotes size variable, and X3 denotes room_number variable.
+ and our target function could be

$$
X_{1}^{2}+X_{2}^{2}+X_{3}^{2}
$$

+ suppose in the other orthonormal basis, the basis are  


$$
e_{1}=\left( \begin{array}{l}{e_{11}} \\ {e_{12}} \\{e_{13}}\end{array}\right)
$$

house| price  | size  |  room_number |
-----|--------|-------|--------------|
 a   | 1000   | 200   |       5      |   
 b   | 900    | 175   |       4      |  
 c   | 500    | 150   |       3      | 

#### the property of a symmetry matrix

<hr />
#### inference
1. [matongxue principan component analysis](https://www.matongxue.com/madocs/1025/)
