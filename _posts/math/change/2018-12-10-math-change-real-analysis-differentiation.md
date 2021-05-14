---
layout: post
title: "R.A.: Differentiation of functions"
keywords: []
description: ""
category: "math"
tags: ["change","R.A."]
---
{% include JB/setup %}

#### Background
1. In contrast to the geometric definition of derivatives, which uses tangents
2. The advantage of working analytically is we do not need to know the axioms of
   geometry
3. These definitions can be modified to handle functions of several variables,
   or functions whose values are vectors instead of scalar.
4. Furthermore, one's geometric intuition becomes difficult to rely on once one
   has more than three dimensions in play.


#### Remark
One sometimes writes $\frac{df}{dx}$ instead of $f^\prime$. This notation is of
course very familiar and convenient, but one has to be a little careful, because
it is only safe to use as long as x is the only variable used to represent the
input for f; **otherwise one can get into all sorts of trouble.**

- function $f: R \rightarrow R$ defined by $f(x):=x^2$ has derivative $\frac{df}{dx} = 2x$
but the function $g: R \rightarrow R$ defined by $g(y) := y^2$ would seem to
have derivative $\frac{dg}{dy} = 0$ if y and x are independent variables 
- despite the fact that g and f are exactly the same function.
- because of this possible source of confusion, we will refrain from using the
  notation $\frac{df}{dx}$ whenever it could possibly lead to confusion
- This confusion becomes even worse in the calculus of several variables. There
  are ways to resolve these ambiguities, most notably by introducing the notion
  of differentiation along vector fields.


#### Chain Rule


##### Remark
1. If one writes y for f(x), and z for g(y), then the chain rule can be written
   in the more visually appealing manner 
   \begin{equation}
   \frac{d z}{d x} = \frac{d z}{d y} \frac{d y}{d x}
   \end{equation}
- However, this notation can be misleading(for instances it blurs the
  distinction between dependent variable and independent variable, especially
  for y)
- and leads one to believe that the quantities $dz, dy, dx$ can be manipulated
  like real numbers. However, these quantities are not real numbers
- In fact, we have not assigned any meaning to them at all, and treating them as
  such can lead to problems in the future.


#### Galois
1. Remember the first time I saw the derivative about a vector, I lost myself,
   what's this ? look at this monster, I have no idea what does this mean ?
2. I should take with analyticall definition, more abstract, more elegant, more
   fundamental.


