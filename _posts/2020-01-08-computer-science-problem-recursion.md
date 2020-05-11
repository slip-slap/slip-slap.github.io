---
layout: post
title: "Recursion"
keywords: []
description: ""
category: "CSP"
tags: []
---
{% include JB/setup %}

#### 
Recursive programming is a great way to show yourself that you can solve
difficult problems.
1. Write an iterative function to solve the problem.
2. Write a "dispatcher" function.
- Dispatcher function solves problem for some "minimal" data set.
- in this case, when size parameter == 0
- Dispatcher calls iterative function to handle non-minimal cases
- must pass smaller data set to iterative function. in this case, passing size
  -1 for third parameter does the trick.
3. In dispatcher, replace call to iterative function with call to dispatcher.

