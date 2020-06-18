---
layout: post
title: "A.P.: KnapSack"
keywords: []
description: 
category: "CS"
tags: ["Algorithm","A.P."]
---
{% include JB/setup %}

####
1. strategy 1: prefer to choose object with lowest weight
2. strategy 2: prefer to choose object with higest profit
both of them sounds feasible.


#### Dynamic Programing(Bottom Up Problem)

| Knapsack  |   |   | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
|---|---|---|---|---|---|---|---|---|---|---|---|
| P | W | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 1 | 2 | 1 | 0 | 0 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 2 | 3 | 2 | 0 | 0 | 1 | 2 | 2 | 3 | 3 | 3 | 3 |
| 5 | 4 | 3 | 0 | 0 | 1 | 2 | 5 | 5 | 6 | 7 | 7 |
| 6 | 5 | 4 | 0 | 0 | 1 | 2 | 5 | 6 | 6 | 7 | 8 |


#### set method
