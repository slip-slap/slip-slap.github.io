---
layout: post
title: "G.T.A.: Breadth First Search"
keywords: []
description: 
category: "math"
tags: ["G.T.","G.T.A."]
---
{% include JB/setup %}

#### BFS
BFS stands for Breadth First Search is a vertex based techinique for finding
   a shortest path in graph. 
1. It uses a Queue data structure which follows first in first out. In BFS, one
  vertex is selected at a time when it is visited and marked then its adjacent
  are visited and stored in the queue. 
- step 1: visiting a vertex
- step 2: exploration




#### Graph Explaniaton
<img src="{{IMAGE_PATH}}/math-discrete-graph-theory-bfs.png">


```cpp
#include <iostream>
#include <list>
#include <vector>

void b_first(int graph[8][8], int row, int column ){
	std::list<int> node_queue;
	std::vector<int> visited_node{0,0,0,0,0,0,0,0,0};
	node_queue.push_back(1);
	visited_node[1] = 1;
	while(node_queue.size()!=0){
		int queue_head = node_queue.front();
		for(int i=1; i<row;i++){
			if(graph[queue_head][i] ==1 && visited_node[i]==0){
				node_queue.push_back(i);
				visited_node[i] = 1;
				std::cout<<"visit node: "<<i<<std::endl;
			}
		}
		node_queue.pop_front();
	}
}

int main(){
	int graph[8][8]={
			{0},{0},{0},{0},
			{0},{0},{0},{0},
	};
		graph[1][2] = 1; graph[1][3] = 1; graph[1][7] = 1; 
		graph[2][1] = 1; graph[2][3] = 1; 
		graph[3][1] = 1; graph[3][2] = 1;   
		graph[3][4] = 1; graph[3][5] = 1;
		graph[4][1] = 1; graph[4][3] = 1; graph[4][5] = 1;
		graph[5][3] = 1; graph[5][4] = 1; graph[5][6] = 1; graph[5][7] = 1;	
		graph[6][5] = 1; graph[7][5] = 1;
		b_first(graph,  8,  8);
}

```







#### Application
1. web crawling
2. social networking
3. network broadcast
4. garbage collection
5. model checking
6. mathematical conjecture checking
7. solving puzzles games

#### galois
1. Graph just as the other abstract data type, why we need to study how to visit node
   in a graph, because things turn a little complicate now, array, stack, tree,
   visiting each element is a very simple things. 
2. BFS is one strategy that we visit every node in the graph, and another thing
   we gain is **the approach to find shortest path from one source to the other
   nodes in the graph**

