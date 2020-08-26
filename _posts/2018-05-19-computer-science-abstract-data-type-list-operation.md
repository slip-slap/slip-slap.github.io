---
layout: post
title: "A.D.T.: List Operation"
keywords: []
description: 
category: "CS"
tags: ["A.D.T."]
---
{% include JB/setup %}

1. reverseing: reverse element or reverse link.

```cpp
#include<iostream>
struct node
{
	int key;
	struct node* ptr_next=nullptr;
};

struct node* head = nullptr;

struct node* insert(struct node* ptr_node,int key)
{
	if(ptr_node==nullptr)
	{
		struct node* temp = new node();
		temp->key = key;
		return temp; 
	}
	ptr_node->ptr_next = insert(ptr_node->ptr_next,key);
	return ptr_node;
}

void display(struct node* ptr_node)
{
	if(ptr_node==nullptr){return;}
	std::cout<<ptr_node->key<<std::endl;
	display(ptr_node->ptr_next);
}

void reverse(struct node* p, struct node* q)
{
	if(q==nullptr){head=p;q=p;return;}
	reverse(q,q->ptr_next);
	q->ptr_next = p;
}

int main()
{
	head = insert(head,3);
	head = insert(head,8);
	head = insert(head,5);
	display(head);
	reverse(nullptr,head);
	display(head);
}
```

#### Galois
1. We can use the relationship function between T(n) and T(n-1), for example,
   T(n)=T(n-1)+1;
2. In the link list context, the relationship can be expressed in a different
   way, but in nature, they are the same.
- T(n).Element = T(n-1).Element
3. It's very beautiful, I am unlucky to stay in Japan, I am luck to find this
   such a beautiful thing.


