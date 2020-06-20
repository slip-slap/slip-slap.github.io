---
layout: post
title: "Algorithm is Art"
keywords: []
description: ""
category: "CS"
tags: ["summary","Algorithm"]
---
{% include JB/setup %}


#### A
1. When I watch how Abdul Bari write a program, or implement an algorithm! It's an
art.  He just do things in such an elegant and natural way.


#### B
1. When he implement the BFS algorithm, he write the pseudo code step by step.
   You feel like it's not difficult, it's natural, eazy, elegant beautiful.
2. When he describe KMP algorithm, how he use the counter in pattern and target
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

