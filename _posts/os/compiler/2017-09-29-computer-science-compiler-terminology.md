---
layout: post
title: "Compiler: Terminology"
keywords: []
description: 
category: "CS" 
tags: ["compiler"]
---
{% include JB/setup %}

#### 1. Syntax and Semantics
1. Syntax: describes the proper form of its programs
2. Semantics: defines what its programs mean

#### 2. Production
$
\text {stmt} \rightarrow \text { if ( expr ) stmt else stmt }
$
1. The arrow may be read as "can have the form." Such a rule is called a production

#### A
1. Three-address code: which consists of a sequence of assembly-like instructions with three
   operands per instruction. Each operand can act like a register.
- Each three-address assignment instruction has at most one operator on the right side
- The compiler must generate a temporarty name to hold the value computed by a three-address
  instruction.

#### Names, Identifiers, and Variables
1. An identifier is a string of characters, typically letters or digits, such as a data object, a
   procedure, a class, or a type
2. Names: All identifiers are names, but not all names are identifiers. Names can also be
   expressions.
- The name $x.y$ might denote the field y of a structure denoted by x, here, x and y are
  identifiers, which $x.y$ is a name.
3. Variable: a variable refers to a particular location of the store.

#### 3. Procedures, Functions, and Methods
#### 4. Declarations and Definitions


