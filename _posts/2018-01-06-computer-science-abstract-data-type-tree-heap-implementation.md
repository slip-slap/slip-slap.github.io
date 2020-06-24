---
layout: post
title: "A.D.T.: Heap Implementation"
keywords: []
description: ""
category: "CS"
tags: ["A.D.T."]
---
{% include JB/setup %}

#### A
1. we use array to implement heap data structure.


#### Code
```cpp
#include<iostream>
#include<cmath>

void swap(int &a, int &b)
{
	int temp = b;
	b = a;
	a = temp;
}

void insert(int heap[],int key)
{
	// find last position
	int last_pos=0;
	while(heap[last_pos]!=0){last_pos++;}
	heap[last_pos] = key;

	//adjust heap
	// position relation
	// for position i. left child 2*i+1 right child 2*i+2
	//                 parent position (i-1)/2
	
	int parent_pos = int(std::floor((last_pos-1)/2));
	while(parent_pos >= 0)
	{
		if(heap[last_pos]>heap[parent_pos])
		{
			swap(heap[last_pos],heap[parent_pos]);
			last_pos = parent_pos;
			parent_pos = int(std::floor((last_pos-1)/2));
		}else{break;}
	}
}

void create(int a[],int size,int heap[])
{
	for(int i=0;i<size;i++)
	{
		insert(heap,a[i]);
	}

}

void remove(int heap[],int last_element_position)
{
	int current_pos = 0;
	while(2*current_pos+1 <= last_element_position)
	{
		if(2*current_pos+2<=last_element_position&&heap[current_pos*2+1]>heap[current_pos*2+2])
		{
			heap[current_pos] = heap[current_pos*2+1];
			current_pos = current_pos*2+1;
		}
		if(2*current_pos+2<=last_element_position&&heap[current_pos*2+1]<heap[current_pos*2+2])
		{
			heap[current_pos] = heap[current_pos*2+2];
			current_pos = current_pos*2+2;
		}
		if(2*current_pos+2>last_element_position)
		{
			heap[current_pos] = heap[current_pos*2+1];
			current_pos = current_pos*2+1;
		}
	}
	heap[last_element_position]=0;
}

int main()
{
	int heap[10]={0,0,0,0,0,0,0,0,0,0};
	int a[10]={1,2,3,4,5,6,7,8,9,10};
	create(a,10,heap);
	for(int i=0;i<10;i++)
	{
		std::cout<<heap[i]<<" ";
	}
	std::cout<<std::endl;
	remove(heap,9);
	for(int i=0;i<10;i++)
	{
		std::cout<<heap[i]<<" ";
	}
}

```

2. Trashed Code


```cpp
#include <iostream>
#include <vector>
#include <string>
#include <cmath>


class max_heap
{
	private:
		int heap_array[15] = {0};
		int pointer= 0;
	public:
		void insert(int priority)
		{
			if(pointer < 15)
			{
				heap_array[pointer] = priority; 
			}

			int parent_pos = int(std::floor((pointer+1)/2)) ;
			int child_pos = pointer+1;
			while(parent_pos >= 1)
			{
				if(heap_array[parent_pos-1]<heap_array[child_pos-1])
				{
					int temp = heap_array[parent_pos-1];
					heap_array[parent_pos-1] = heap_array[child_pos-1];
					heap_array[child_pos-1] = temp;
				}
				if(parent_pos == 1){
					break;
				}
				parent_pos = int(std::floor((parent_pos)/2)) ;
				child_pos= int(std::floor((child_pos)/2)) ;
			}
			pointer++;
		}

		void display(){
			for(int i=0;i<15;i++)
			{
				std::cout<<heap_array[i]<<" ";
			}
		}
};

int main()
{

	max_heap my_heap;
	my_heap.insert(5);
	my_heap.insert(10);
	my_heap.insert(8);
	my_heap.insert(9);
	my_heap.insert(1);
	my_heap.insert(20);
	my_heap.display();

}
```
