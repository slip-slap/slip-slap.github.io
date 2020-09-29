---
layout: post
title: "TOC: Context Free Languages"
keywords: []
description: 
category: "CS" 
tags: ["TOC"]
---
{% include JB/setup %}

#### Introduction
Context Free languages provide a superset of the regular languages, if you can specify a class of
patterns with a regular expression, you can express the same language using a context free grammar.
1. Examples of languages that are context free, but not regular, include the set of all strings
   representing common arithmetic expressions, legal Pascal or C source files, and MASM macros
2. Context free languages are characterized by balance and nesting, for example, arithmetic
   expression have balanced sets of parenthesis. High level language statements like repeat... until
   allow nesting and are always balanced.


#### B
A context free grammar contains two types of symbols: terminal symbols and nonterminal symbols.
1. terminal symbols are the individual characters and strings that the context free grammar matches
   plus the empty string, $\epsilon$.
2. Context free grammars use nonterminal symbols for function calls and definitions

