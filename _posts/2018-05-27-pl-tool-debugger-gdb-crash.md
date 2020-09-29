---
layout: post
title: "GDB: Crash"
keywords: [] 
description: 
category: "PL"
tags: ["tool","debugger"]
---
{% include JB/setup %}

#### When happen
1. the most common cause of a crash is for a program to attempt to access a
   memory location without having the permisson to do so. The hardware will
   sense this and execute a jump to the operating system.
2. The OS will normally announce that the program has caused a segmentation
   fault, commonly referred to as a seg fault, and discontinue execution of the
   program.


#### Segmentation Fault

```cpp
#include <iostream>
int main()
{
	int* test_arry ;
	test_arry= new int[20];
	std::cout<<"the 25th element: "<<test_arry[25000000]<<std::endl;
}

```
