---
layout: post
title: "A.D.T.: AVL Tree Implementation"
keywords: []
description: ""
category: "CS"
tags: ["A.D.T."]
---
{% include JB/setup %}


```cpp
#include <iostream>
#include <string>
#include <cmath>

int get_node_height(struct node * node);
int get_balance_factor(struct node * node);
struct node * ll_rotation(struct node * unbalance_node);
struct node * lr_rotation(struct node * unbalance_node);
struct node * rr_rotation(struct node * unbalance_node);
struct node * rl_rotation(struct node * unbalance_node);
void set_tree_balance_factor(struct node* node);

struct node
{
	int data;
	int balance_factor;
	struct node * lchild;
	struct node * rchild;
};
struct node* root = nullptr;
struct node * insert(struct node * ptr_node, int data)
{
	struct node* temp=nullptr;
	if(ptr_node== nullptr)
	{
		temp = new node();
		temp->data = data;;
		return temp;
	}
	if(ptr_node->data > data){ ptr_node->lchild = insert(ptr_node->lchild,data); }
	if(ptr_node->data < data){ ptr_node->rchild = insert(ptr_node->rchild,data); }

	set_tree_balance_factor(ptr_node);
	if(ptr_node->balance_factor == 2&& ptr_node->lchild!=nullptr &&ptr_node->lchild->balance_factor ==1) 
	{ 
	 ptr_node = ll_rotation(ptr_node);
	}
	/*
	if(ptr_node->balance_factor == 2&& ptr_node->lchild->balance_factor ==-1){lr_rotation(ptr_node);}
	if(ptr_node->balance_factor == -2&& ptr_node->lchild->balance_factor ==-1){rr_rotation(ptr_node);}
	if(ptr_node->balance_factor == -2&& ptr_node->lchild->balance_factor ==1){rl_rotation(ptr_node);}
	*/
	return ptr_node;
}

struct node * ll_rotation(struct node * unbalance_node)
{
	struct node * unbalance_node_lchild = unbalance_node->lchild ;
	struct node * unbalance_node_lchild_rchild = unbalance_node->lchild->rchild;

	unbalance_node_lchild->rchild = unbalance_node;
	unbalance_node->lchild = unbalance_node_lchild_rchild;

    // update balance factor
	unbalance_node->balance_factor = get_node_height(unbalance_node->lchild)
		  							-get_node_height(unbalance_node->rchild);
	unbalance_node_lchild->balance_factor = get_node_height(unbalance_node_lchild->lchild) 
										   -get_node_height(unbalance_node_lchild->rchild);

	// if unbalance_node is root, update root
	if(unbalance_node == root)
	{
		root = unbalance_node_lchild;
	}

	return unbalance_node_lchild;
}

void pre_order(struct node * node)
{
	if(node== nullptr)
	{
		return;
	}
	pre_order(node->lchild);
	std::cout<<"data "<<node->data<<" balance factor: "<<node->balance_factor<<std::endl;
	pre_order(node->rchild);
}

int get_node_height(struct node * node)
{
	if(node== nullptr)
	{
		return -1;
	}
	int lheight= get_node_height(node->lchild)+1;
	int rheight= get_node_height(node->rchild)+1;
	return lheight>rheight?lheight:rheight;
}

int get_balance_factor(struct node * node)
{
	int l_node_height = get_node_height(node->lchild);
	int r_node_height = get_node_height(node->rchild);
	return l_node_height - r_node_height;
}

struct node * lr_rotation(struct node * unbalance_node)
{

	return nullptr;
}
struct node * rl_rotation(struct node * unbalance_node)
{
	return nullptr;
}
struct node * rr_rotation(struct node * unbalance_node)
{
	return nullptr;
}

void avl_rotation(struct node* node)
{
	if(node == nullptr || std::abs(node->balance_factor) <= 1){return;}
	avl_rotation(node->lchild);
	avl_rotation(node->rchild);
}



void set_tree_balance_factor(struct node* node)
{
	if(node==nullptr)
	{
		return;
	}
	node->balance_factor = get_node_height(node->lchild) -get_node_height(node->rchild);
	set_tree_balance_factor(node->lchild);
	set_tree_balance_factor(node->rchild);
}

int main()
{
	root = insert(root,10);
	insert(root, 9);
	insert(root, 12);
	insert(root, 8);
	insert(root, 7);
	pre_order(root);
	std::cout<<"*******************************"<<std::endl;
}

```
