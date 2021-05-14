---
layout: post
title: "Compiler: LR Parsing"
keywords: []
description: 
category: "CS" 
tags: ["compiler"]
---
{% include JB/setup %}

#### Introduction
The most prevalent type of bottom-up parser today is based on a concept called LR(k) parsing
1. The "L" is for left-to-right scanning of the input
2. The "R" for constructing a rightmost derivation in reverse.
3. The k for the number of input symbols of lookahead that are used in making parsing decisions.



#### Advantage
1. LR parsers can be constructed to recognize virtually all programming language constructs for
   which context-free grammars can be written
2. The LR-parsing method is the most general nonbacktracking shift-reduce parsing method known, yet
   it can be implemented as efficiently as other, more primitive shift-reduce methods.
3. An LR parser can detect a syntactic error as soon as it is possible to do so on a left-to-right
   scan of the input.
4. The class of grammars that can be parsed using LR methods is a proper superset of the class of
   grammars that can be parsed with predictive or LL methods.

#### Disadvantage
1. It is too much work to construct an LR parser by hand for a typical programming-language grammar.
