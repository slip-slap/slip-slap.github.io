---
layout: post
title: "Compiler: Syntax-Directed Translator"
keywords: []
description: 
category: "CS" 
tags: ["compiler"]
---
{% include JB/setup %}

#### 1. Syntax 
1. Syntax: describes the proper form of its programs
2. semantics: defines what its programs mean

#### Grammars Definition
1. A set of terminal symbols, sometimes referred to as "tokens"
2. A set of nonterminals, sometimes called "syntactic variables"
- Each nonterminal represents a set of string of terminals, in a manner we shall describe.
3. A set of productions, where each production consistt of a nonterminal called the head or left
   side of the production, an arrow, and sequence of terminals and/or nonterminals, called the body
   or right side of the production
- The intuitive intent of a production is to specify one of the written forms of a construct
- If the head nonterminal represents a construct, then the body represents a written form of the
  construct.

