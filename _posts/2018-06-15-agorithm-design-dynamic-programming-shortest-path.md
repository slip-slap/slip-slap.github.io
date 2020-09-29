---
layout: post
title: "A.D.: Shortest Path Problem"
keywords: []
description: ""
category: "Algorithm"
tags: ["A.D."]
---
{% include JB/setup %}

#### AAA

```cpp
#include<iostream>
#include <algorithm>
#include <vector>
#define I 32679
int memo_table[4];
int shortest_path(int g[4][4], int start, int end)
{
	if(start==end){return 0;}
	std::vector<int> shortest_path_vector;
	int shortest_path_length = 0;
	for(int i=0;i<4;i++)
	{
		if(g[end][i]!=I&&g[end][i]!=0)
		{
			int temp_length= g[end][i]+shortest_path(g,start,i);
			shortest_path_vector.push_back(temp_length);
		}
	}

	if(shortest_path_vector.size()!=0)
	{ shortest_path_length  =
		*std::min_element(shortest_path_vector.begin(),shortest_path_vector.end());
	}
    // remember
	memo_table[end] = shortest_path_length;
	return shortest_path_length;
}

int main()
{
	int graph[4][4]=
	{
		{0,I,I,I},
		{4,0,I,I},
		{5,I,0,I},
		{I,8,2,0}
	};

	int length = shortest_path(graph,0,3);
	for(int i =0;i<4;i++)
	{
		std::cout<<memo_table[i]<<" ";
	}
}
```
