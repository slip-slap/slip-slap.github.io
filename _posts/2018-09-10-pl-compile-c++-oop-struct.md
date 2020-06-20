--- 
layout: post 
title: "C++: Struct" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}

####
1. Struct can be defined as collection of data members under one name.
2. The only reason that we still have struct is backward compatibility.



#### Example
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
