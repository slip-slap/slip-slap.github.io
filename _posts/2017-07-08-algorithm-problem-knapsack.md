---
layout: post
title: "A.P.: KnapSack"
keywords: []
description: 
category: "Algorithm"
tags: ["A.P."]
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

1. Formula
$
V[i, \omega]=\max \{V[i-1, \omega], V[i-1, \omega-\omega(i)]+P(i]\}
$


#### set method



```cpp
#include<iostream>

// object weight 2,3,4,5
// object value  1,2,5,6
// bag compacity 8
// maxmize profit
int knapsack(int row, int column)
{
	static int object_weight[5]={0,2,3,4,5};
	static int object_value[5]={0,1,2,5,6};
	// profit table
	static int profit_table[5][9];
	if(column<0){return -99999;}
	if(row == 0||column == 0){return 0;}

	int profit_a = knapsack(row-1,column);
	int profit_b = knapsack(row-1,column-object_weight[row]) + object_value[row];
	return std::max(profit_a,profit_b);
}

int main()
{
	std::cout<<knapsack(1,8)<<std::endl;
	std::cout<<knapsack(2,8)<<std::endl;
	std::cout<<knapsack(1,7)<<std::endl;
	std::cout<<knapsack(4,8)<<std::endl;
	std::cout<<knapsack(4,7)<<std::endl;
	std::cout<<knapsack(3,7)<<std::endl;
}
```
