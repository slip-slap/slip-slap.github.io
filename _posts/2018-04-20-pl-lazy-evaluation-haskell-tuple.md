--- 
layout: post 
title: "Haskell: Tuple" 
keywords: [] 
description: 
category: "PL"
tags: ["compile","haskell"] 
--- 
{% include JB/setup %}

#### Background
In some ways, tuples are like lists, they are a way to store several values into
a single value.
- A list of numbers is a list of numbers. That's its type and it doesn't matter
  if it has only one number in it or an infinite amount of numbers.
- Tuples, however, are used when you know exactly how many values you want to
  combine and its type depends on how many components it has and the types of
  the components.
