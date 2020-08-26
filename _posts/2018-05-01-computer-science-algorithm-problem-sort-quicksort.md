---
layout: post
title: "A.P.: Quick Sort"
keywords: []
description: ""
category: "CS"
tags: ["A.P."]
---
{% include JB/setup %}


#### with selection sort
1. Selection sort is given the position, find the value.
2. Quick sort is given the value, find the position.


#### Code Implementation

```cpp
#include<iostream>

void swap(int &a, int& b)
{
	int temp = b;
	b = a;
	a = temp;
}

// I don't buy this name, finding position is a better name.
int partition(int a[],int low, int high)
{
	int key=a[low];
	int head = low;
	while(low<high)
	{
		// the rule is very simple, but you just need do some paperwork
		// but you should take care
		// Step 1: move the pointer, remember where the pointer stop
		// Step 2: do operation
		// pointer stop at position which value greater then key;
		while(key>=a[low]){low++;}
		// pointer stop at posistion which value equal or less than key;
		while(key<a[high]){high--;}
		if(a[low]>a[high] && low<high){swap(a[low],a[high]);}
	}
	swap(a[head],a[high]);
	return high;
}

void quick_sort(int a[],int low, int high)
{
	if(low >= high){return;}
	if(low < high)
	{
		int partition_position = partition(a, low, high);
		quick_sort(a,low,partition_position);
		quick_sort(a,partition_position+1,high);
	}
}

int main()
{
	int A[12]={12,9,3,4,5,6,7,8,2,10,11,1};
	int B[13]={12,9,3,4,5,6,7,8,2,10,11,1,100000000};

	quick_sort(B,0,12);
	for(int i=0;i<13;i++)
	{
		std::cout<<B[i]<<std::endl;
	}
}
```

#### Galois
1. When you use recursive, never go into that recursive loop;
2. Just one thing to keep in mind, each time you call the recursive function,
   the call parameter is always the same.
3. when we create tree or linked list by recursive function, there are two
   parameters, every time we keep the call like the previous one.

4. Here, we have three parameters. It's always the same, **repeat the routine.
   It's simple, repeat the routine**.


