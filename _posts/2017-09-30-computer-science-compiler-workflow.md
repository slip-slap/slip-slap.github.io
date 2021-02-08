---
layout: post
title: "Compiler: Introduction"
keywords: []
description: 
category: "CS" 
tags: ["compiler"]
---
{% include JB/setup %}

#### Compiler Structure
The compiler is consists of two parts: analysis and synthesis
1. Analysis part: often called the front end of the compiler
- collects information about the source program and stores it in a data structure called a symbol
  table, which is passed along with the intermediate representation to the synthesis part.
- Symbol table is used by all phases of the compiler
2. Synthesis part: the back end
- construct the desired target program from the intermidiate representation and the information in
  the symbol table

#### Procedure
1. Lexical Analysis or scanning: reads the stream of characters making up the source program and
   groups the characters into meaningful sequences called lexemes, for each lexeme, the lexical
   analyzer produces as ouput a token of the form:  \<token-name, attribute-value\>
- In the token, the first component token-name is an abstract  symbol that is used during syntax
  analysis.
- The second component attribute-value points to an entry in the symbol table for this token.
- Information from the symbol-table entry is needed for semantic analysis and code generation.

2.  The second phase of the compiler is syntax analysis or parsing 
- The parser used the first components of the tokens produced by the lexical analyzer to create a
  tree-like intermediate representation that depicts the grammatical structure of the token stream.
- A typical representation is a syntax tree in which each interior node represents an operation and
  the children of the node represent the arguments of the operation.

3. Semantic Analysis: uses the syntax tree and the information in the symbol table to check the
   source program for semantic consistency with the language definition
- Type checking: where the compiler checks that each operator has matching operands. For example,
  many programming language definitions require an array index to be an integer.
- The language specification may permit some type conversions called coercions

4. Intermediate Code Generation
- In the process of translating a source program into target code, a compiler may construct one or
  more intermediate representations, which can have a variety of forms. 
- Syntax trees are a form of intermediate representation
- After syntax and semantic analysis of the source program, many compilers generate an explicit
  low-levell or machine-like intermediate representation, which we can think of as a program for an
  abstract machine.

5. Code Optimization
6. Code Generation:


#### B
1. The study of compilers is mainly a study of how we design the right mathematical models and
   choose the right algorithms.






