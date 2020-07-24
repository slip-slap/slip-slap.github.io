--- 
layout: post 
title: "Haskell: Algebraic Data Types" 
keywords: [] 
description: 
category: "PL"
tags: ["haskell"] 
--- 
{% include JB/setup %}

#### Background
Product and coproduct are the two ways of combining types. It turns out that a
lot of data structures in everyday programming can be build using just these two
mechanisms.


#### Example

```haskell
data Bool = False | True
data Int  = -2147483648 | -2147483647 | ... | -1 | 0 | 1 | 2 | ... | 2147483647
```

1. $\textbf{data}$ means that we're defining a new data type. The part before
   the $\textbf{=}$ denotes the type, which is $\textbf{Bool}$
2. The parts after the $\textbf{=}$ are value constructors. They specify the
   different values that this type can have.
3. The $\textbf{|}$ is read as or. 
4. So we can read this as: the $\textbf{Bool}$ type can have a value of
   $\textbf{True}$ or $\textbf{False}$
5. Both the type name and the value constructors have to be capital cased.


##### Example 2:

```haskell
data Shape = Circle Float Float Float | Rectangle Float Float Float Float
```



