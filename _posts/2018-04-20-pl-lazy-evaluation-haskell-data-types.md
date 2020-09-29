--- 
layout: post 
title: "Haskell: Algebraic Data Types" 
keywords: [] 
description: 
category: "PL"
tags: ["haskell","lazy evaluation"] 
--- 
{% include JB/setup %}

#### Background
Product and coproduct are the two ways of combining types. It turns out that a
lot of data structures in everyday programming can be build using just these two
mechanisms.


#### Example

```haskell
data Person = MakePerson String Int
```

1. To the left of the $\textbf{=}$ is the type constructor and to the right can
   be one or more data constructors
2. The type constructor is the name of the type, which is used in type
   signatures
3. The data constructors are functions that takes a $\textbf{String}$ and an
   $\textbf{Int}$, and returns a $\textbf{Person}$

```haskell
data Person = Person String Int
```

1. When working with only one data constructor, it's quite common to give it the
   same name as the type constructor.


#### Sum Types

```haskell
data Person = PersonWithAge String Int | PersonWithoutAge String
```

1. Types can have more than one data constructor, these are called sum types
   because the total number of values you can build of a sum type is the sum of
   the number you can build with each of its constructors
2. The syntax is to separate each constructor by a $\textbf{|}$ symbol.


#### Kinds and Parameters

```haskell
data Person a = PersonWithThing String a | PersonWithoutThing String
```

1. The type we've defined here is $\textbf{Person a}$
2. The $\textbf{a}$ is called a type variable, anylowecase value will do, but
   its common to use $\textbf{a}$ because it's short



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
data Pair a b = P a b
```

1. $\textbf{Pair a b}$ is the name of the type parameterized by two other types,
   a and b;
2. $\textbf{P}$ is the name of the data constructor. You define a pair type by
   passing two types to the $\textbf{Pair}$ type constructor.



