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



#### Access deleted pointer 
1. Deleting a pointer doesn't zero ut any memory becasue to do so would take CPU cycles.
and that's not what C++ is about
- What you have there is a dangling pointer.
-  This is a good reason why you should NULL out pointers when you have deleted
   the memory that they pointed to, that way you would get an immediate error
   if you try to dereference that pointer.

```cpp
#include<iostream>
#include<list>

void* operator new(size_t size){
	std::cout<<"allocate new pointer "<<size<<" bytes"<<std::endl;
	return malloc(size);
}

void operator delete(void* memory) noexcept{
	std::cout<<"object freeing "<<std::endl;
	free(memory);
}

void operator delete[](void* memory) noexcept{
	std::cout<<"object freeing "<<std::endl;
	free(memory);
}

struct node {
	int a = -1;
	int b = -1;
	int c = -1;
};
int main(){
	std::cout<<"--------------begin-------------"<<std::endl;
	std::list<node*> node_list;
	node* first = new node();
	first->a = 136; 
	node_list.push_back(first);
	//delete first;
	std::cout<<"first address: "<<first<<std::endl;
	int* a1 = new int();
	int* a2 = new int();
	int* a3 = new int();
	std::cout<<*a1+*a2+*a3<<std::endl;
	std::cout<<"a= "<<first->a<<std::endl;
	node* third = new node[1000000];
	std::cout<<third<<std::endl;
	std::cout<<"a= "<<first->a<<std::endl;
	std::cout<<"--------------end----------------"<<std::endl;
}
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
2. [delete pointer can still access data](https://stackoverflow.com/questions/7827504/c-delete-pointer-issue-can-still-access-data)

