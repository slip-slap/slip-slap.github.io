--- 
layout: post 
title: "C++: Reference" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}


####
1. reference must be initilized.
2. can only be refered to one value.


```cpp
int &b name; // illegal

void increment(int& number)
{
	number++;
}

void increment(int&& number)
{
	number++;
}

int main()
{
	int a = 3;
	increment(a);
	increment(4);
}
```



#### 1. Left reference 
1. reference is used to diffence two situation copy and reference during
   function call

#### 2. Right reference





#### Galois
1. I just stay in Python, Java too long time, forget the original appearance of
   the world.
2. Reference just make use of the hardware.
