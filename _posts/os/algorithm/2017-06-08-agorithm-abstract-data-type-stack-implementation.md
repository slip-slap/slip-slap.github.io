---
layout: post
title: "A.D.T.: Stack Implementation"
keywords: []
description: ""
category: "Algorithm"
tags: ["A.D.T."]
---
{% include JB/setup %}


```cpp
#include<iostream>

struct node 
{
	int key;
	struct node * ptr_next;
};

struct stack 
{
	struct node* top=nullptr;
	int size=0;
};

void push(struct stack &st, int key)
{
	struct node *temp = new node();
	temp->key = key;

	temp->ptr_next=st.top;
	st.top = temp;
	st.size++;
}

void pop(struct stack &st)
{
	if(st.top==nullptr)
	{
		std::cout<<"overflow";
		return;
	}else
	{
		st.top=st.top->ptr_next;
	}
}

void display(struct stack &st)
{

	struct node* temp=st.top;
	while(temp!=nullptr)
	{
		std::cout<<temp->key<<std::endl;
		temp=temp->ptr_next;
	}
}

int main()
{
	struct stack st;
	push(st,4);
	push(st,1);
	pop(st);
	display(st);
}
```
