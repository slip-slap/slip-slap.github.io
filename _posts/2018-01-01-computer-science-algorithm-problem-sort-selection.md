---
layout: post
title: "A.P.: Selection Sort"
keywords: []
description: ""
category: "CS"
tags: ["sort"]
---
{% include JB/setup %}


#### A

```cpp
#include <iostream>
void swap(int &a, int &b)
{
	int temp = b;
	b = a;
	a =temp;
}

void selection_sort(int a[])
{

	for(int j=0;j<7;j++)
	{
		for(int i=j+1;i<8;i++)
		{
			if(a[j]>a[i]){swap(a[j],a[i]);}
		}
	}
}

int main()
{
	int a[8]={4,2,7,1,9,12,0,5};
	selection_sort(a);
	for(int i= 0;i<8;i++)
	{
		std::cout<<a[i]<<std::endl;
	}

}
```
