---
layout: post
title: "D.P.: Builder"
keywords: []
description: ""
category: "Algorithm"
tags: ["D.P."]
---
{% include JB/setup %}


#### Problem
It is easy to fall into the trap of having a class of numberous constructors
where each one is taking a different number of parameters. The developer is
forced to instantiate the class with the correct combination of parameters on
each situation.
- This problem has a name, it is a popular anti-pattern called the **telescoping
  constructor** and build pattern is the go-to solution for it.
- The Builder pattern's main intent is to have the minimum number of overloading
  constructors to support the construction of several representations of an
  object.





#### Reference
1. [Design Patterns](https://medium.com/@andreaspoyias/design-patterns-a-quick-guide-to-builder-pattern-a834d7cacead)


