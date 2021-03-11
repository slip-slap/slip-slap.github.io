---
layout: post
title: "C++ Keyword: Memory Allocate and Free"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}

#### Trick

1. define
```cpp
int var=8; //not dynamically allocated, you can't delete on it
int *ptr = new int; // dynamically allocated, you can call delete on it
```

2. delete
- The following did nothing at all, you didn't free anything, as the pointer
  pointed at NULL.
```cpp
ptr = NULL;
delete ptr;
```

3. The following shouldn't be done
- you pointed it at null, leaving behind leaked memory(the new int you allocated).
- you should free the memory you were pointing at.
- there is no way to access the new int anymore, hence memory leak;

```cpp
ptr = new int;
ptr = NULL;
delete ptr;
```





#### Memory allocate and free

```cpp
#include <iostream>
#include <list>

const int MEMORY_SIZE=200000000;

void allocate(std::list<int*>& container){
	std::cout<<"allocate memory"<<std::endl;
	int* a = new int[MEMORY_SIZE];
	container.push_back(a);
}

void free(std::list<int*>& container){
	std::cout<<"free memory"<<std::endl;
	int* a = container.front();
	container.pop_front();
	delete[] a;
}

int main(){
	char input;
	bool a=true;
	std::list<int*> address;
	while(a){
		std::cin>>input;
		if(input=='f')
			free(address);
		if(input=='n')
			allocate(address);
		if(input=='q')
			break;
	}
	 
}
```

#### Reference
1. [new and delete](https://stackoverflow.com/questions/13223399/deleting-a-pointer-in-c)

