---
layout: post
title: "Algorithm is Art"
keywords: []
description: ""
category: "Algorithm"
tags: ["summary"]
---
{% include JB/setup %}


#### A
The title is named as data structure and algorithm, why this ? It means in a
program, you must have these two things.

1. data structure to describe your problem.
2. algorithm to solve your problem by your solution.
- this is trivial, but you need to realize this, during the array copy program,
  the data structure is two array, target arrary and a blank array. Don't forgot
  another data struct.
- pointer, yes it is trivial, but it is a data structure, we use an integer to
  stands for this.
- After data structure well prepared, the algorithm begin.
3. Keep this in mind, data structure and algorithm, you need both of them in a
   pgrogram.



#### A
1. When I watch how Abdul Bari write a program, or implement an algorithm! It's an
art.  He just do things in such an elegant and natural way.
2. When he implement the BFS algorithm, he write the pseudo code step by step.
   You feel like it's not difficult, it's natural, eazy, elegant beautiful.
3. When he describe KMP algorithm, how he use the counter in pattern and target
   string.


#### Principal
1. from simple to complex
- suppose you need double layers for loops.
- first write the inside for-loop.
- then wirte the outside for-loop

```cpp
#include <iostream>
#include <string>

void swap(int &a, int &b);
void swap(int &a, int &b)
{
	int temp = a;
	a = b;
	b = temp;
}

int main()
{
	int a[6] = {3,2,4,8,1,0};
	for(int i=0;i<6;i++){std::cout<<a[i]<<" ";}
	std::cout<<std::endl;
    // simple
	/*
	for(int i=0;i<5;i++)
	{
		if(a[i]>a[i+1])
		{
			int temp = a[i+1];
			a[i+1] = a[i];
			a[i] = temp;
		}
	}
	*/
	// complex, do somepaper work
	// accordint to above sort, we need do this for 5 times
	for(int j=0;j<5;j++)
	{
		for(int i=0;i<5-j;i++)
		{
			if(a[i]>a[i+1]) { swap(a[i],a[i+1]); }
		}
	}
	for(int i=0;i<6;i++){std::cout<<a[i]<<" ";}
}

```

2. set the initial state for your algorithm.



#### Galois
1. One day, I watched the video that Abdui Bari taught array copy by for loop.
- initial state, define variable and initialize
```cpp
int a[10] ={1,2,3,1,2,3,1,2,3,8};
int b[10]; 
i = 0;
```
- loop stage, each time i plus one, repeat action a[i] = b[i];
- I know, I know this is simple, but the idea is powerful, change counter, do
  something, repeat this operation
- algorithm is art.


