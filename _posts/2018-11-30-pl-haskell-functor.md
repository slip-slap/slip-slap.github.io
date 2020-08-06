--- 
layout: post 
title: "Haskell: Functors" 
keywords: [] 
description: 
category: "PL"
tags: ["haskell"] 
--- 
{% include JB/setup %}

#### Background
1. Haskell's combination of purity, higher order functions, parameterized
   algebraic data types, and typeclasses allows us to implement polymorphism on
   a much higher level than possible in other languages.

2. Functor is a typeclass, which is basically for things that can be mapped
   over.


#### Example

```haskell
class Functor f where
    fmap :: (a -> b) -> f a -> f b
```
1. $\textbf{fmap}$, the definition doesn't provide any default implementation
   for it. 
2. The type of $\textbf{fmap}$ is interesting. In the definitions of typelcasses
   so far, the type variable that played the role of the type in the typeclass
   was a concrete type like the $\textbf{a}$ in $\textbf{(==) :: (Eq a) => a ->
   a -> Bool}$
3. but now, the $\textbf{f}$ is not a concrete type(a type that a value can
   hold, like Int, Bool or Maybe String), but a type constructor that takes one
   type parameter.

##### Concrete

```haskell
instance Functor [] where fmap = map
```





#### Galois
1. Type constructors take other types as parameters to eventually produce
   concrete types. That kind of reminds me of functions, which take values as
   parameters to produce values.
2. We've seen that type constructors can be partially applied($\textbf{Either
   String}$ is a type that takes one type and produces a concrete type,
   like$\textbf{Either String Int}$), just like functions can.






#### Reference
1. [functor and container](https://bartoszmilewski.com/2014/01/14/functors-are-containers/)

