--- 
layout: post 
title: "Haskell: Datatype Algebra" 
keywords: [] 
description: 
category: "PL"
tags: ["haskell"] 
--- 
{% include JB/setup %}

#### Example

```haskell
data List a = Nil | Cons a (List a)
```

1. Replace $\textbf{List a}$  with $\textbf{x}$, we get the equation
- $x = 1 + a \times x$

2. We can't solve it using traditional algebraic methods because we can't
   substract or divide types. But we can try a series of substitutions, where we
   keep tracking x on the right hand with $1 + a \times x$, and use the
   distributive property

$
\begin{array}{l}x=1+a * x \\ x=1+a *(1+a * x)=1+a+a * a * x \\ x=1+a+a * a *(1+a
* x)=1+a+a * a+a * a * a * x\end{array}
$




