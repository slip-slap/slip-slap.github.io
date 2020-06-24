---
layout: post
title: "A.D.T.: List Concatenate"
keywords: []
description: 
category: "CS"
tags: ["A.D.T."]
---
{% include JB/setup %}


#### Code


```cpp
#include<iostream>

struct node 
{
	int key;
	struct node *ptr_next_node;
};

struct node* first;
struct node* second;
struct node* insert(struct node* ptr_node,int key);

struct node* insert(struct node* ptr_node,int key)
{
	if(ptr_node == nullptr)
	{
		struct node * temp=new node();
		temp->key = key;
		return temp;
	}
	ptr_node->ptr_next_node = insert(ptr_node->ptr_next_node,key);
	return ptr_node;
}

void display(struct node* ptr_node)
{
	if(ptr_node==nullptr){return;}
	std::cout<<ptr_node->key<<" ";
	display(ptr_node->ptr_next_node);
}


struct node*  concatenate(struct node* first, struct node* second)
{
	// initial: because we want to connect them, we need create a third linklist
	struct node* third; 
	struct node* last; 
	if(first->key < second->key)
	{
		third = first;
		first = first->ptr_next_node;
		last  = third;
		last->ptr_next_node = nullptr;
	}else
	{
		third = second;
		second= second->ptr_next_node;
		last  = second;
		last->ptr_next_node = nullptr;
	}

	//repeat
	while(first!=nullptr&&second!=nullptr)
	{
		if(first->key<second->key)
		{
			last->ptr_next_node = first;
			first = first->ptr_next_node;
			last = last->ptr_next_node;
			last->ptr_next_node = nullptr;
		}else
		{
			last->ptr_next_node = second;
			second = second->ptr_next_node;
			last = last->ptr_next_node;
			last->ptr_next_node = nullptr;
		}
	}
    // append the remaining
	while(first!=nullptr)
	{
			last->ptr_next_node = first;
			first = first->ptr_next_node;
			last = last->ptr_next_node;
			last->ptr_next_node = nullptr;
	}
	while(second!=nullptr)
	{
			last->ptr_next_node = second;
			second= second->ptr_next_node;
			last = last->ptr_next_node;
			last->ptr_next_node = nullptr;
	}
	return third;
}

int main()
{
	first = insert(first,2);
	first = insert(first,4);
	second= insert(second,3);
	second= insert(second,5);
	second= insert(second,7);
	display(first);
	std::cout<<std::endl;
	display(second);
	struct node* third = concatenate(first, second);
	std::cout<<std::endl;
	display(third);
}
```
