--- 
layout: post 
title: "Haskell: Type" 
keywords: [] 
description: 
category: "PL"
tags: ["haskell"] 
--- 
{% include JB/setup %}


#### Jargon
1. names of concrete types always start with a capital letter
2. names of type variables start with a lowercase letter. 
1. $\textbf{::}$ is read as "has type of"

2. Function type: 


#### Type
1. Tuples are types but they are dependent on their length as well as the types
   of their components, so there is theoretically an infinite number of tuple
   types, which is too many to cover
- empty tuple () is also a type which can only have a single value: ()

#### Type variable

```haskell
:t head
head :: [a] -> a
```

1. what is this $\textbf{a}$ ? Is it a type, types are written in capital case,
   so it can't exactly be a type.
2. Because it's not in capital case it's actually a $\textbf{type variable}$.
3. That means that a can be of any type.





#### Typeclasses
A typeclass is a sort of interface that defines some behavior. If a type is a
part of a typeclass, that means that it supports and implements the behavior the
typeclass describes
- A lot of people coming from OOP get confused by typeclasses because they think
  they are like classes in object oriented languages. Well, they're not.
- You can think of them kind of as Java interfaces, only better.


```haskell
:t (==)
(==) :: (Eq a) => a -> a -> Bool
```

1. $\textbf{=>}$: everything before the $\textbf{=>}$ is called a class
   constraint

#### Type Parameters
A value constructor can take some values parameters and then produce a new
value.
- For instance, the $\textbf{Car}$ constructor takes three values and produces a
  car value.
- In a similar manner, type constructors can take types as parameters to produce
  new types. This might sound a bit too meta at first, but it's not that
  complicated, if you're familiar with templates in C++, you'll see some
  parallels.




#### reference
1. [haskell](http://learnyouahaskell.com/introduction)
