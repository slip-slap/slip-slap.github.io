---
layout: post
title: "G.T.A.: Deepth First Search"
keywords: []
description: 
category: "math"
tags: ["G.T.","G.T.A."]
---
{% include JB/setup %}

#### DFS
DFS stands for Depth First Search is a edge based technique. It used the Stack
data structure, performs two stages:
- first visited vertices are pushed into stack 
- second if there is no vertices then visited vertices are popped.


#### Graph Exploration

```cpp
#include <iostream>
#include <queue>
#include <stack>

void BFS(int i, int graph[8][8])
{
	std::queue<int> int_queue;
	int visited[8]={0};
	visited[i] = 1;
	std::cout<<"visit node "<<i<<std::endl;
	int_queue.push(i);
	while(int_queue.size()!=0)
	{
		for(int j=0;j<8;j++)
		{
			int current = int_queue.front();
			if(graph[current][j] == 1 && visited[j] == 0)
			{
				int_queue.push(j);
				visited[j] = 1;
				std::cout<<"visit node "<<j<<std::endl;
			}
		}
		int_queue.pop();
	}
}
	
void DFS(int i,int visited[8], int graph[8][8])
{
	if(visited[i]==0)
	{
		std::cout<<"visit node "<<i<<std::endl;
		visited[i] = 1;
	}
	for(int j=1;j<8;j++)
	{
		if(graph[i][j]==1&&visited[j]==0)
		{
			DFS(j,visited,graph);
		}
	}
}


int main()
{

	int graph[8][8]={0};
	graph[1][2] = 1; graph[1][3] = 1; graph[1][4] = 1; 
	graph[2][1] = 1; graph[2][3] = 1; 
	graph[3][1] = 1; graph[3][2] = 1;   
	graph[3][4] = 1; graph[3][5] = 1;
	graph[4][1] = 1; graph[4][3] = 1; graph[4][5] = 1;
	graph[5][3] = 1; graph[5][4] = 1; graph[5][6] = 1; graph[5][7] = 1;	
	graph[6][5] = 1; graph[7][5] = 1;

	int visited[8]={0};

	DFS(5,visited,graph);
	std::cout<<"******************"<<std::endl;
	BFS(7, graph);
}

```


####
1. class classification


#### Galois
1. DFS just provide us another way to visit all the nodes in a graph.
