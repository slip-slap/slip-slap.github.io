--- 
layout: post 
title: "C++: Array" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}


#### static array

#### dynamic array

```cpp
#include <iostream>

int main(){

    // stack
    int a[5]={1,3,5,2,0};
    int *b;

    //heap
    b = new int[5];
    for(int i=0; i<5; i++){
       std::cout<<b[i]<<std::endl;
       std::cout<<*(b+i)<<std::endl;
    }
}
```


#### Increasing Array Size
1. why array size can not increase directly?
- Because the memory of array is contiguous. If you increase the size at the end
  of current array. You don't know whether the following address is used by the
  other program.
- so the only way is create a big array.


#### Function Parameter

```cpp
void test(int a[][5]) { }
int main()
{
	int my_arr[5][5];
	test(my_arr);
	return 0;
}
```


2. Method Two

```cpp
#include <iostream>

void test(int** a) 
{
	for(int i=0;i<5;i++)
	{
		for(int j=0;j<5;j++)
		{
			std::cout<<a[i][j]<<" ";
		}
		std::cout<<std::endl;
	}
}
int main()
{
	int** my_arr;
	for(int i=0;i<5;i++)
	{
		*my_arr = new int[5];
		 my_arr++;
	}
	test(my_arr);
	return 0;
}
```






