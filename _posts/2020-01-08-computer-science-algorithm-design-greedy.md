---
layout: post
title: "A.D.: Greedy"
keywords: []
description: ""
category: "CS"
tags: ["A.D.","Algorithm"]
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

