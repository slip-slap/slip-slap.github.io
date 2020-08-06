--- 
layout: post 
title: "Haskell: Function" 
keywords: [] 
description: 
category: "PL"
tags: ["haskell"] 
--- 
{% include JB/setup %}


#### Jargon
1. Haskell function definition consist of the name of the function followed by
   formal parameters.
2. The body of the function follows the equal sign, the body of a function is
   always an expression, there are no statements in functions. The result of a
   function is this expression.

#### Example

```haskell
double x = x + x
```

1. The function name is followed by parameters separated by spaces.
2. When defining functions, there's $\textbf{=}$ and after that we define what
   the function does.

#### Pattern
You can define separate function bodies for different patterns.

```haskell
lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "sorry"
```

1. When you call $\textbf{lucky}$, the patterns will be checked from top to bottom
and when it conforms to a pattern, the corresponding function body will be
used.

#### Guards
1. Whereas patterns are a way of making sure a value conforms to some form and
deconstructing it, guards are a way of testing whether some property of a
value(or several of them) are true of false.
2. That sounds a lot like an if statement and it's very similar.
3. The things is that guards are a lot more readable when you have serveral
   condtitions and they play really nicely with patterns.






