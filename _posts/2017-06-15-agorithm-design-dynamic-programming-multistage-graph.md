---
layout: post
title: "A.D.: Shortest Path Problem"
keywords: []
description: ""
category: "Algorithm"
tags: ["A.D."]
---
{% include JB/setup %}

<img src="{{IMAGE_PATH}}/algorithm-design-dynamic-programming-multistage.png" height="" width="" />

```cpp
#include <iostream>
#include <list>

const int GRAPH_SIZE = 13;
int shortest_path(int graph[GRAPH_SIZE][GRAPH_SIZE],int stage, int vertex){
	if(stage==5){return 0;}

	int minimum = 10000;
	for(int i=1;i<GRAPH_SIZE;i++){
		if(graph[vertex][i]!= 0){
			int temp= graph[vertex][i] + shortest_path(graph, stage+1,i);
			if(temp < minimum){
				minimum = temp;
			}	
		}
	}
	return minimum;
}

void print_array(int array[GRAPH_SIZE][GRAPH_SIZE], int row, int column){
	for(int i=0;i<row;i++){
		for(int j=0;j<column;j++){
			std::cout<<array[i][j]<<", ";
		}
		std::cout<<std::endl;
	}

}
int main(){
	int multistage_graph[GRAPH_SIZE][GRAPH_SIZE]={0};
	multistage_graph[1][2] = 9; multistage_graph[1][3] = 7;
	multistage_graph[1][4] = 3; multistage_graph[1][5] = 2;
	multistage_graph[2][6] = 4; multistage_graph[2][7] = 2;
	multistage_graph[2][8] = 1; multistage_graph[3][6] = 2;
	multistage_graph[3][7] = 7; multistage_graph[4][8] = 11;
	multistage_graph[5][7] = 11; multistage_graph[5][8] = 8;
	multistage_graph[6][9] = 6; multistage_graph[6][10] = 5;
	multistage_graph[7][9] = 4; multistage_graph[7][10] = 3;
	multistage_graph[8][10] = 5; multistage_graph[8][11] = 6;
	multistage_graph[9][12] = 4; multistage_graph[10][12] = 2;
	multistage_graph[11][12] = 5;

	//print_array(multistage_graph,13,13);
	int distance= shortest_path(multistage_graph,1,1);
	std::cout<<distance<<std::endl;
}
```

