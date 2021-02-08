---
layout: post
title: "TOC: Language"
keywords: []
description: 
category: "CS" 
tags: ["TOC"]
---
{% include JB/setup %}


| Grammar Type | Grammar Accepted          | Language Accepted                | Automaton                |
|--------------|---------------------------|----------------------------------|--------------------------|
| TYPE-0       | Unrestricted Grammar      | Recursively Enumberable Language | Turing Machine           |
| TYPE-1       | Context Sensitive Grammar | Context Sensitive Language       | Linear Bounded Automaton |
| TYPE-2       | Context Free Grammar      | Context Free Language            | Pushdown Automata        |
| TYPE-3       | Regular Grammar           | Regular Language                 | Finite State Automaton   |

1. You will find references to the term "machine" throughout automata theory literature. This term
   does not refer to some particular computer on which a program executes
2. This is usually some function that reads a string of symbols as inpus and produces one of tho
   outputs: match or failure
3. Each class of machine has a class of languages associated with it. Deterministic and
   nondeterministic finite state auotomata recognize the regular languages. Nondeterministic push
   down automata recognize the context free languages. Turing machines can recognize all
   recongnizable languages.




#### Derivation
The set of all strings that can be derived from a Grammar is said to be the language generated from
that Grammar


#### Galois
1. When I write a program to identify legal parenthesis, stack is indispensable. According to theory
   of computation, this program is a pushdown automata.
