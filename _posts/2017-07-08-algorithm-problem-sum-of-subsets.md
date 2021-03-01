---
layout: post
title: "A.P.: Sum of Subsets"
keywords: []
description: 
category: "Algorithm"
tags: ["A.P."]
---
{% include JB/setup %}

#### 1. Backtracking

$$
\begin{array}{l}\cdot \sum_{i=1}^{k} \omega_{i} x_{i}+\omega_{k+1} \leqslant m
\\ \sum_{i=1}^{k} \omega_{i} x_{1}+\sum_{i=k+1}^{n} \omega_{i}> m \end{array}
$$

<img src="{{IMAGE_PATH}}/computer-science-algorithm-problem-sum-of-subset.png">


```cpp
#include <iostream>
#include <vector>
#include <exception>

void print_vector(std::vector<int> &vec){
	for(std::vector<int>::iterator itr=vec.begin(); itr!=vec.end();itr++){
		std::cout<<*itr<<",";
	}
	std::cout<<std::endl;
}

void sumOfSubset(std::vector<int>& bag_int, std::vector<int>& subset, int layer){
	if(layer == 6){
		print_vector(subset);
		return;
	}
	for(int i=0; i<2; i++){
		subset[layer] = i;
		std::vector<int> sub_bag(bag_int.size()-1);
		std::copy(++bag_int.begin(),bag_int.end(), sub_bag.begin());
		sumOfSubset(sub_bag,subset,layer+1);
		subset[layer] = -1;
	}
}

int main(){
	std::vector<int> bag_int {5,10,12,13,15,18};
	std::vector<int> subset {-1,-1,-1,-1,-1,-1};
	sumOfSubset(bag_int, subset,0);
}

```


#### Galois
1. Don't be nervous, make use of knowledge you have, it's just another tree
   recursive problem


