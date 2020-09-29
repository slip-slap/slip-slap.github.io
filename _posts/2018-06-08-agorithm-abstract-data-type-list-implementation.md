---
layout: post
title: "A.D.T.: List Implementation 2"
keywords: []
description: 
category: "Algorithm"
tags: ["A.D.T."]
---
{% include JB/setup %}

#### A

```cpp
#include<iostream>
struct node 
{
	int data;
	struct node * ptr_next=nullptr;
};

struct node* head=nullptr;

struct node* insert(struct node* ptr_node, int data)
{
	if(ptr_node== nullptr){
		ptr_node = new node();
		ptr_node->data = data;
		return ptr_node;
	}
	ptr_node->ptr_next = insert(ptr_node->ptr_next, data);
	return ptr_node;
}

void display(struct node * ptr_node)
{
	if(ptr_node!=nullptr) 
	{ 
		std::cout<<ptr_node->data<<" ";
		display(ptr_node->ptr_next);
	}
}

int node_counter(struct node* ptr_node)
{
	if(ptr_node==nullptr)
	{
		return 0;
	}
	return node_counter(ptr_node->ptr_next) + 1;
}

int node_sum(struct node* ptr_node)
{
	if(ptr_node == nullptr){return 0;}
	return ptr_node->data + node_sum(ptr_node->ptr_next);
}

int node_max(struct node* ptr_node)
{
	if(ptr_node == nullptr){return -99999999;}
	return std::max(ptr_node->data,node_max(ptr_node->ptr_next));
}
	
struct node* node_search(struct node * ptr_node, int data)
{
	if(ptr_node==nullptr)
	{
		return nullptr;
	}

	if(ptr_node->data == data)
	{
		return ptr_node;
	}
	return node_search(ptr_node->ptr_next, data);
}


int main()
{
	head = insert(head, 10);
	head = insert(head, 9);
	head = insert(head, 6);
	head = insert(head, 15);
	display(head);
	int number= node_counter(head);
	std::cout<<"node number "<<number<<"  ";
	int sum= node_sum(head);
	std::cout<<"node sum "<<sum<<"  ";
	int max= node_max(head);
	std::cout<<"node max "<<max<<"  ";
	struct node * target=node_search(head,11);
	if(target == nullptr)
	{
	std::cout<<"node target not found";
	}else
	{std::cout<<"node target found "<<target->data;}
}


```

