---
layout: post
title: "A.D.T.: Array Operation"
keywords: []
description: ""
category: "Algorithm"
tags: ["A.D.T."]
---
{% include JB/setup %}

#### Shift and Rotation

```cpp
#include<iostream>

void shift_and_roation(int arr[],int size)
{
	int temp = arr[0];
	for(int i=0;i<size-1;i++)
	{arr[i]=arr[i+1];}
	arr[size-1] = temp;
}

int main()
{
	int arr[5]={1,2,3,4,5};
	shift_and_roation(arr,5);
	for(int i=0;i<5;i++){std::cout<<arr[i]<<" ";} std::cout<<std::endl;
}
```

#### Missing Element

```cpp
#include<iostream>
// find missing element in a sorted array
void find_missing_element(int arr[], int size)
{
	int difference = arr[0]-0;

	for(int i=0;i<size;i++)
	{
		if(difference!=arr[i] -i)
		{
			std::cout<<"missing element is"<<i+difference;
			difference = arr[i]-i;
		}
	}
}
int main()
{
	int arr[8]={1,2,4,5,6,7,8,9};
	find_missing_element(arr,8);
}
```

#### Finding Minimum and Maximum

```cpp
#include<iostream>
void find_min_max(int arr[],int size)
{
	int min=arr[0];
	int max=arr[0];

	for(int i=1;i<size;i++)
	{
		if(min>arr[i]){min=arr[i];continue;}
		if(max<arr[i]){max=arr[i];continue;}
	}
	std::cout<<"max value is "<<max<<std::endl<<"min values is "<<min;
}

int main()
{
	int arr[5]={-1,2,4,3,-9};
	find_min_max(arr,5);
}
```

#### Finding a pair with sum K

```cpp
#include<iostream>
void find_pair_with_sum(int arr[],int size,int sum)
{
	int i=0,j=size-1;
	while(i<j)
	{
		if(arr[i]+arr[j]<sum){i++;}
		if(arr[i]+arr[j]>sum){j--;}
		if(arr[i]+arr[j]==sum)
		{
			std::cout<<"element A and B are "<<arr[i]<<" "<<arr[j]<<std::endl;;
			i++;
			j--;
		}
	}
}

int main()
{
	int arr[10]={1,2,3,4,5,6,7,8,9,10};
	find_pair_with_sum(arr,10,7);
}
```

#### Finding pair with sum K in unsorted array

```cpp
#include<iostream>
void find_pair_with_sum(int arr[],int size,int sum)
{
		for(int i=0;i<size;i++)
		{
			for(int j=0;j<size;j++)
			{
				if(j>i&&arr[j]+arr[i]==sum)
				{
					std::cout<<"element a and b are"<<arr[i]<<" "<<arr[j]<<std::endl;
				}
			}
		}
}
int main()
{
	int arr[10]={3,1,3,4,5,6,7,8,9,2};
	find_pair_with_sum(arr,10,7);
}
```

#### Finding pair with sum K in unsorted array by hash

```cpp
#include<iostream>
void find_pair_with_sum(int arr[],int size,int sum)
{
	int max=arr[0];
	for(int i=1;i<size;i++)
	{ if(max<arr[i]){max=arr[i];} }

	//define hash table to accerlate search 
	int arr_hash[max];
	for(int i=0;i<max;i++)
	{ arr_hash[i]=0; }

	for(int i=0;i<size;i++)
	{
		arr_hash[arr[i]]=1;
		if(arr_hash[sum-arr[i]]==1)
		{
			std::cout<<"A and B "<<arr[i]<<" "<<sum-arr[i]<<std::endl;
		}
	}
}
int main()
{
	int arr[10]={3,1,12,4,5,6,7,8,9,2};
	find_pair_with_sum(arr,10,13);
}
```
