---
layout: post
title: "A.P.: Mergesort"
keywords: []
description: ""
category: "CS"
tags: ["A.P.","Algorithm"]
---
{% include JB/setup %}

1. sorting means putting data in a specified order.


#### 2-way Merging
```code
Merge(A, B, m, n):
    i = 1;
    j = 1;
    k = 1;
    while(i<= m && j<= n):
        if(A[i] < B[j]):
            c[k++] = A[i++];
        else:
            c[k++] = B[j++];
    
    for(; i<= m; i++);
        c[k++] = A[i];
    for(;j <= n; j++):
        c[k++] = B[j];
```



#### Code
```cpp
#include <iostream>
void sort_merge(int* a, int size_a, int* b, int size_b, int* merge)
{
	int i = 0;
	int j = 0;
	int k = 0;
	
	while(i<size_a && j<size_b)
	{
       if(a[i]<b[j])
	   {
		   merge[k++] = a[i++];
	   }else{
		   merge[k++] = b[j++];
	   }
	}

	for(;i<size_a;)
	{
		merge[k++] = a[i++];
	}

	for(;j<=size_b;)
	{
		merge[k++] = b[j++];
	}
}


int main()
{
	int a[5] = {1,2,3,8,13};
	int b[10] =  {1,2,3,4,7,19,22,34,189,198};
	int merge[15];
	sort_merge(a,5,b,10,merge);
	for(int i=0;i<15;i++)
	{
		std::cout<<merge[i]<<std::endl;;
	}

}
```




