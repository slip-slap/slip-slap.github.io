--- 
layout: post 
title: "Haskell: Applicative Functor" 
keywords: [] 
description: 
category: "PL"
tags: ["haskell"] 
--- 
{% include JB/setup %}


```haskell
class (Functor f) => Applicative f where
    pure :: a -> f a
    (<*>) :: f (a -> b) -> f a -> f b
```

1. It starts the definition of the $\textbf{Applicative}$ class and it also
   introduces a class constraint. It says that if we want to make a type
   constructor part of the $\textbf{Applicative}$ type class, it has to be in
   $\textbf{Functor}$ first. That's why if we know that if a type constructor is
   part of the $\textbf{Applicative}$ typeclass, it's also in $\textbf{Functor}$
