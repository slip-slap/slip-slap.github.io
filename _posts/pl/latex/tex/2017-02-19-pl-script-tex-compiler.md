---
layout: post
title: "Tex: How do macros work"
keywords: []
description: 
category: "PL"
tags: ["latex","script"]
---

#### Idea
The idea is macro programming

#### 1. category code
The category code of a character determines that character's role in Tex
- For instance, Tex assigns a certain role to letters, another to space characters.
- Tex attaches a code to each character that it reads. When Tex reads the
  letter 'r', for example, it ordinarily attaches the category code 11 to it.



#### 2. Eyes

1. Tex will see that each of those characters has category code 11 and will
   forward those characters ofr typesetting as part of the paragraph it is
   building. However, Tex does not forward the character code alone bt, instead
   it uses the pair of numbers(character code, category code) to calculate a
   composite integer value called a character token.
2. Tex sees a space character with category code 10.



#### Galois
1. There is no essiential difference between macros and functions, they are
   the same in nature.
2. In speak of tikz Package, it just define a compliate macro, nothing else.
- just like a big function.


#### Reference
1. [How do Tex macros work](https://www.overleaf.com/learn/latex/A_six-part_series:_How_do_TeX_macros_actually_work%3F)
