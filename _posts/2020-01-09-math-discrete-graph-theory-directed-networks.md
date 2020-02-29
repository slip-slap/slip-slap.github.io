---
layout: post
title: "Graph Theory: Networks"
keywords: [""]
description: ""
category: "math"
tags: ["discrete"]
---
{% include JB/setup %}

#### Concept
1. A network N is a digraph D with two distinguished subsets of vertices, X and
   Y, and a non-negative integer-valued function c defined on its arc set A; the
   sets X and Y are assumed to be disjoint and nonempty.
- X and Y correspond to production centres and markets   
- vertices which are neither sources nor sinks are called **Intermediate
  Vertices**, the set of such vertices will be denoted by I.
- Capacity Function: the function c is the capacity function of N and its value
  on an arc a the capacity of a.
- The capacity of an arc can be thought of as representing the maximum rate at
  which a commodity can be transported along it.


<img src="{{IMAGE_PATH}}/math-discrete-graph-theory-networks.png" />
-. two sources $x_1,x_2$
-. three sinks $y_1,y_2,y_3$
-. four intermediate vertices $v_1,v_2,v_3,v_4$

2. Flow: A flow in a network N is an integer-valued function f defined on A such
   that 



