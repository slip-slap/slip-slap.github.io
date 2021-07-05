---
layout: post
title: "A.D.: Backtracking "
keywords: []
description: ""
category: "Algorithm"
tags: ["A.D."]
---
{% include JB/setup %}

#### Idea
1. generate state space tree: this is the first step. 
2. bounding function: optimize this function.
<img src="{{IMAGE_PATH}}/computer-science-algorithm-design-backtracking.png">

#### solution


```cpp
#include <iostream>

const int basket_size = 4;
int basket[basket_size]={0,0,0,0}; 


void print_array(const int* arr, int size){
	for(int i=0;i<size;i++){
		std::cout<<arr[i]<<",";
	}
	std::cout<<std::endl;
}


void backtrack(int* ball, int size,int number_of_ball){
	if(number_of_ball+1 > basket_size){
		print_array(basket, 4);
		return;
	}
	for(int i = 0;i < size;i++){
		basket[number_of_ball] = ball[i];

		int new_arr[size-1];
		for(int l=0,k=0; l<size; l++){
			if(l==i){continue;}
			new_arr[k] = ball[l];
			k++;
		}
		//print_array(new_arr, size-1);
		backtrack(new_arr, size-1,number_of_ball+1);
		basket[number_of_ball] = 0;
	}
}

void copy_arrary(int* arr, int size)
{
	int new_arr[size-1];
	for(int i=0,k=0; i<size; i++){
		if(i==1){continue;}
		std::cout<<arr[i]<<std::endl;
		new_arr[k] = arr[i];
		k++;
	}
	print_array(new_arr, 3);
}


int main()
{
	int arr[4]={1,2,3,4};
	backtrack(arr,4,0);
}
```





#### Application
1. N Queen Problem
2. Sum of Subsets Problem


#### Difference Between Backtracking and Dynamic Programming
1. both of them are brue force
2. Dynamic programming is used for optimization problem, find the best optimal
3. Backtracking is used to find all the solution
4. Backtracking is depth first, branch and bound is breadth first.




#### Reference
1. [backtracking](https://www.geeksforgeeks.org/backtracking-introduction/)



