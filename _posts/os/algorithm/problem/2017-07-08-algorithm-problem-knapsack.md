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


#### Exponential Method

```cpp
struct node {
	int key = -1;
	int level = -1;
	node* left_child = nullptr;
	node* right_child = nullptr;
};


void bfs(node* root, int level){
	if(level == 1){
		return;
	}
	for(int i=0;i<2;i++){
		node* temp = new node();
		temp->key = i;
		temp->level = level+1;
		if(i==0){
			root->left_child = temp;
		}else{
			root->right_child = temp;
		}
	}
	bfs(root->left_child, level+1);
	bfs(root->right_child, level+1);
}

void visit_tree(node* child){
	if(child == nullptr){
		return;
	}
	std::cout<<child->key;
	visit_tree(child->left_child);
	visit_tree(child->right_child);
}

int main(){
	node* root = new node();
	root->key = -1;
	bfs(root,-1);
	visit_tree(root);
}
```

#### Dynamic Method

```cpp

#include <iostream>
#include <list>

const int SOLUTON_SIZE = 4;
const int PROFITS[SOLUTON_SIZE+1]={0,1,2,5,6};	
const int WEIGHTS[SOLUTON_SIZE+1]={0,2,3,4,5};
const int WEIGHTS_LIMIT = 8;
int profit_arr[5][9];

void Print2DAarray(int arr[5][9], int row, int col){
	for(int i=0; i<row; i++){
		for (int w=0; w<col;w++){
			std::cout<<arr[i][w]<<", ";
		}
		std::cout<<std::endl;
	}
}

int main(){
	for(int i=0;i<SOLUTON_SIZE+1; i++){
		for(int j=0;j<WEIGHTS_LIMIT+1;j++){
			if(i==0 || j==0){ profit_arr[i][j]=0;}
			else if (WEIGHTS[i] < j || WEIGHTS[i] == j){
				int profit1 =  profit_arr[i-1][j];
				int profit2 =  PROFITS[i] + profit_arr[i-1][j - WEIGHTS[i]];
				if(profit1>profit2){profit_arr[i][j] = profit1;}
				else{profit_arr[i][j]=profit2;}
			}
			else{
				profit_arr[i][j] = profit_arr[i-1][j];
			}
		}
	}
	Print2DAarray(profit_arr, 5, 9);
}
```




