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
