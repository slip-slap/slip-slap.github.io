---
layout: post
title: "A.D.T.: Binary Search Tree"
keywords: []
description: ""
category: "CS"
tags: ["A.D.T."]
---
{% include JB/setup %}



#### Complete Binary Tree
1. how to identify a tree is complete binary tree, you can make use of the array
   representation
  

#### Drawback
1. The height of the binary search depends on the order of insertion.
2. You can't control the insertion order.


```cpp
#include<iostream>
struct node
{
	int data;
	struct node * lchild=nullptr;
	struct node * rchild=nullptr;
};

struct node* root=nullptr;

struct node* insert(struct node * ptr_node, int data)
{
	if(ptr_node == nullptr)
	{
		struct node* temp = new node();
		temp->data = data;
		return temp;
	}
	if(ptr_node->data > data){ptr_node->lchild = insert(ptr_node->lchild,data);}
	if(ptr_node->data < data){ptr_node->rchild = insert(ptr_node->rchild,data);}
	return ptr_node;
}

struct node* search(struct node* ptr_node, int data)
{
	if(ptr_node==nullptr){return nullptr;}
	if(ptr_node->data==data){return ptr_node;}
	if(ptr_node->data>data){ptr_node = search(ptr_node->rchild,data);}
	if(ptr_node->data<data){ptr_node = search(ptr_node->lchild,data);}
	return ptr_node;
}

void pre_order(struct node* ptr_node)
{
	if(ptr_node == nullptr){return;}
	pre_order(ptr_node->lchild);
	std::cout<<"data is "<<ptr_node->data<<std::endl;;
	pre_order(ptr_node->rchild);
}

int main()
{
	root = insert(root,30);
	root = insert(root,20);
	root = insert(root,40);
	root = insert(root,10);
	root = insert(root,25);
	root = insert(root,35);
	root = insert(root,50);
	struct node* result = search(root, 41);
	if(result==nullptr){std::cout<<"target not found";}
	if(result!=nullptr){std::cout<<"target found"<<result->data;}

}

```


#### Galois
1. We go to university to get degree, we learn staff from youtube.


