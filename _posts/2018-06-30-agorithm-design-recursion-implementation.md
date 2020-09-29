---
layout: post
title: "A.D.: Recursion Implementation"
keywords: []
description: ""
category: "Algorithm"
tags: ["A.D."]
---
{% include JB/setup %}

#### 1. Taylor Series

```cpp
#define _USE_MATH_DEFINES
#include<iostream>
#include<cmath>

float power(float x, int n)
{
	if(n==0){return 1;}
	return x*power(x,n-1);
}

float factor(int n)
{
	if(n==0){return 1;}
	return n*factor(n-1);
}

float taylor_series(float x,int n)
{
	if(n==0){return 1;}
	return power(x,n)/factor(n)+taylor_series(x,n-1);
}

int main()
{
	float power_result = power(M_E,0);
	int factor_result  = factor(1);
	std::cout<<"power result is "<<power_result
		   	<<"factor result is "<<factor_result;

	float taylor_resulst=taylor_series(3,25);//e^3
	std::cout<<"taylorresult is "<<M_E;
	std::cout<<"taylorresult is "<<taylor_resulst;
}


```
