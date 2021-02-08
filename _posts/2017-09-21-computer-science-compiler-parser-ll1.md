---
layout: post
title: "Compiler: Parser LL(1)"
keywords: []
description: 
category: "CS" 
tags: ["compiler"]
---
{% include JB/setup %}

#### History
1. A parser is a function that determines whether a pattern belongs to a language
2. LL(1):
- The first "L" in LL(1) stands for scanning the input from lett to right.
- The second "L" for producing a leftmost derivation
- The "1" for using one input symbol of lookahead at each step to make parsing action decisions.



#### Comment
1. LL(1) parser only work for a large subset of the CFGs known as LL(1) grammar, although the set of
   context free languages recongnizable by an LL(1) grammar is a subset of the context free
   languages, it is a very large subset and you shoudn't run into too many difficulties using this
   technique.

