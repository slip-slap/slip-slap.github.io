---
layout: post
title: "A.D.T.: Hash Chaining"
keywords: []
description: 
category: "CS"
tags: ["A.D.T."]
---
{% include JB/setup %}


##### 基于数组和链表的map实现
1. 数组用来存放哈希表
2. 链表用来存放key

```cpp
#include <iostream>
#include <string>

struct node 
{
	int number;
	std::string name;
	struct node * next_node;
};

int hashing(int number)
{
	return number%10;
}

void insert(struct node& customer,struct node * hash_chaining[])
{
	 int pos = hashing(customer.number);
	 if(hash_chaining[pos]==nullptr)
	 {
		struct node*  temp = new node();
		temp->name = customer.name;
		temp->number = customer.number;
		hash_chaining[pos] = temp;
	 }else
	 {
		 struct node * head= hash_chaining[pos];

		 while(head->next_node != nullptr)
		 {
			 head = head->next_node;
		 }
		struct node*  temp = new node();
		temp->name = customer.name;
		temp->number = customer.number;
		head->next_node = temp;
     }
}

void search(int number, struct node* hash_chaining[])
{
	int pos = hashing(number);
	struct node * head = hash_chaining[pos];

	while(head->number != number && head->next_node != nullptr)
	{
		head = head->next_node;
	}

	if(head->number == number)
	{
    	std::cout<<head->name<<std::endl;;
	}else
	{
		std::cout<<"customer number not found"<<std::endl;
	}	
}


int main()
{
     struct node*  hash_chaining[10]={nullptr};
	 struct node customer1 = {198,"Liam"};
	 struct node customer2 = {24,"Jason"};
	 struct node customer3 = {36,"Henry"};
	 insert(customer1,hash_chaining);
	 insert(customer2,hash_chaining);
	 insert(customer3,hash_chaining);
	 search(4,hash_chaining);
	 search(36,hash_chaining);

 }

```
