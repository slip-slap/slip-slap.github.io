---
layout: post
title: "A.D.: Greedy"
keywords: []
description: ""
category: "Algorithm"
tags: ["A.D."]
---
{% include JB/setup %}


#### Property
1. optimal substructure
2. greedy choice property
- locally optimal choice lead to globally solution, most of the time, it's not
  tree, but sometimes it works.

```code
Greedy(a, n):
    for i = 1 to n do:
    {
        x = select(a);
        if feasible(x) then:
            solution = solution + x

    }
```


#### How to understand this
1. You want to buy the best car. 
- Strategy 1: find all the cars available in the city, and compare them all, of
  course, you can find the best car, but it is time-consuming
- Strategy 2: First, find the car brand you like most; Second, select best known
  model, then you got your best car.  Is it the best car in the city, Maybe,
  manybe not, but, according to my strategy, this is the best. and **This is
  Greedy Strategy**


#### Application
1. finding minimum cost spanning tree: always select a minimum edge 
2. Dijkstra short path algorithm     : always select shortest path vertex



#### Galois
1. the difference between dynamic programming strategy and greedy strategy is
   very obvious, dynamic programming strategy is brute force, consider every
   situation.  but greedy strategy is different, it only consider limit
   situation, which situation it consider, which is based on a predefined
   precedure, to get optimal result. 
   .
